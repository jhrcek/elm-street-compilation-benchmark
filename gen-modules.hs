#!/usr/bin/env stack
{- stack script
--resolver lts-18.21
-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wall #-}

import Data.Foldable (for_)
import Text.Printf (printf)

main :: IO ()
main = do
    putStrLn "Running"
    for_ [1,2,4,8,16,32] genModule

genModule :: Int -> IO ()
genModule i = writeFile (printf "src/Record%02d.hs" i) $ unlines $
    [ "{-# LANGUAGE DeriveGeneric, DerivingVia #-}"
    , printf "module Record%02d where" i
    , "import Data.Aeson (FromJSON, ToJSON)"
    , "import Elm (Elm, ElmStreet (ElmStreet))"
    , "import GHC.Generics (Generic)"
    , ""
    ] <> fmap
    (\n -> printf "data B%02d = B%02d{ myUnit%02d::(), myInt%02d::Int, myDouble%02d::Double, myFloat%02d::Float, myBool%02d::Bool, myList%02d::[Int], myString%02d::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B%02d" n n n n n n n n n n)
    [1..i]
