{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record4 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B1 = B1{ myUnit1::(), myInt1::Int, myDouble1::Double, myFloat1::Float, myBool1::Bool, myList1::[Int], myString1::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B1
data B2 = B2{ myUnit2::(), myInt2::Int, myDouble2::Double, myFloat2::Float, myBool2::Bool, myList2::[Int], myString2::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B2
data B3 = B3{ myUnit3::(), myInt3::Int, myDouble3::Double, myFloat3::Float, myBool3::Bool, myList3::[Int], myString3::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B3
data B4 = B4{ myUnit4::(), myInt4::Int, myDouble4::Double, myFloat4::Float, myBool4::Bool, myList4::[Int], myString4::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B4
