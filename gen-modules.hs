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
    [ "{-# LANGUAGE DeriveGeneric #-}"
    , printf "module Record%02d where" i
    , "import Data.Aeson (FromJSON, ToJSON, parseJSON, toJSON)"
    , "import Elm (Elm, elmStreetParseJson, elmStreetToJson, genericToElmDefinition, toElmDefinition)"
    , "import GHC.Generics (Generic, from)"
    , ""
    ] <> fmap 
      (\n -> unlines
            [ printf "data B%02d = B%02d{ myUnit%02d::(), myInt%02d::Int, myDouble%02d::Double, myFloat%02d::Float, myBool%02d::Bool, myList%02d::[Int], myString%02d::String } deriving Generic" n n n n n n n n n
            , printf "instance Elm B%02d where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error \"Proxy for generic elm was evaluated\" :: B%02d)" n n
            , printf "instance ToJSON B%02d where toJSON = elmStreetToJson" n
            , printf "instance FromJSON B%02d where parseJSON = elmStreetParseJson" n
            ])
      [1..i]