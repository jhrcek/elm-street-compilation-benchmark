{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingVia   #-}

module Simple.One where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data A = A Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A
