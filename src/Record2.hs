{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record2 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B1 = B1{ myUnit1::(), myInt1::Int, myDouble1::Double, myFloat1::Float, myBool1::Bool, myList1::[Int], myString1::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B1
data B2 = B2{ myUnit2::(), myInt2::Int, myDouble2::Double, myFloat2::Float, myBool2::Bool, myList2::[Int], myString2::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B2
