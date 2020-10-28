{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingVia   #-}

module Record.One where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B = B { myUnit::(), myInt::Int, myDouble::Double, myFloat::Float, myBool::Bool, myList::[Int], myString::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B
