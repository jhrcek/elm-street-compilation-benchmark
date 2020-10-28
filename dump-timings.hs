#!/usr/bin/env stack
{- stack script
--resolver lts-16.20
--package conduit
--package text
--package containers
-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wall #-}
import Conduit (concatMapC, filterC, foldlC, liftIO, mapC, mapMC, runConduitRes,
                sourceDirectoryDeep, (.|))
import Data.Char (isDigit)
import Data.Foldable (for_)
import Data.List (isSuffixOf, sortOn)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Monoid (Sum (..))
import Data.Ord (Down (..))
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.IO as Text
import Data.Text.Read (decimal, double)
import System.Environment (getArgs)
import Text.Printf (printf)

getBuildDir :: IO FilePath
getBuildDir = do
    args <- getArgs
    case args of
        [dir] -> pure dir
        _     -> error
            "Missing directory argument\n\
            \USAGE:\n\
            \    run `stack build --ghc-options=\"-ddump-timings -ddump-to-file\"`\n\
            \    this will produce '*.dump-timings' for each compiled module in $(stack path --dist-dir)/build/src\n\
            \    and then run `dump-timings.hs $(stack path --dist-dir)/build/src` to get summary statistics"

main :: IO ()
main = do
    buildDir <- getBuildDir
    timings <- extractTimings buildDir
    putStrLn $ printf "Total time: %.2fs" $ totalTime timings
    for_ (takeWhile (\(_,m) -> timePerModule m > 1) $ sortOn (Down . timePerModule . snd) $ Map.toList timings) $ \(modul, phaseMap) -> do
        putStrLn $ printf "%.2fs    %s" (timePerModule phaseMap) modul
        for_ (takeWhile (\(_,t) -> t > 0.1) $ sortOn (Down . snd) $ Map.toList phaseMap) $ \(phase, time) -> do
            putStrLn $ printf "     %.2fs    %s" time phase

type Phase = Text
type Module = Text
type Alloc = Int
type Seconds = Double
type Timings = Map Module (Map Phase Seconds)

totalTime :: Timings -> Seconds
totalTime = getSum . foldMap (foldMap Sum)

timePerModule :: Map Phase Seconds -> Seconds
timePerModule = getSum . foldMap Sum

extractTimings :: FilePath -> IO Timings
extractTimings buildDir = runConduitRes
    $ sourceDirectoryDeep False buildDir
    .| filterC (isSuffixOf ".dump-timings")
    .| mapMC (liftIO . Text.readFile)
    .| concatMapC Text.lines
    .| filterC (Text.isInfixOf "]: ")
    .| mapC parseRow
    .| foldlC addDataPoint Map.empty

-- "CodeGen [Prelude]: alloc=555864 time=0.673" -> ("CodeGen", "Prelude", 555864, 0.673)
parseRow :: Text -> (Phase, Module, Alloc, Seconds)
parseRow row =
    let (phase, rest0) = Text.break (=='[') row
        (modul, rest1) = Text.break (==']') $ Text.tail rest0
    in case decimal $ Text.dropWhile (not . isDigit) rest1 of
            Left _ -> error $ "Failed to parse line " <> Text.unpack row
            Right (alloc, rest2) -> case double $ Text.dropWhile (not . isDigit) rest2 of
                Left _          -> error $ "Failed to parse line " <> Text.unpack row
                Right (time, _) -> (Text.init phase, modul, alloc, time/1000 {- convert time from ms to seconds -})

addDataPoint :: Timings -> (Phase, Module, Alloc, Seconds) -> Timings
addDataPoint timings (phase, modul, _alloc, time) =
    Map.insertWith (Map.unionWith (+)) modul (Map.singleton phase time) timings
