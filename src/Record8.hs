{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record8 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B1 = B1{ myUnit1::(), myInt1::Int, myDouble1::Double, myFloat1::Float, myBool1::Bool, myList1::[Int], myString1::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B1
data B2 = B2{ myUnit2::(), myInt2::Int, myDouble2::Double, myFloat2::Float, myBool2::Bool, myList2::[Int], myString2::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B2
data B3 = B3{ myUnit3::(), myInt3::Int, myDouble3::Double, myFloat3::Float, myBool3::Bool, myList3::[Int], myString3::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B3
data B4 = B4{ myUnit4::(), myInt4::Int, myDouble4::Double, myFloat4::Float, myBool4::Bool, myList4::[Int], myString4::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B4
data B5 = B5{ myUnit5::(), myInt5::Int, myDouble5::Double, myFloat5::Float, myBool5::Bool, myList5::[Int], myString5::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B5
data B6 = B6{ myUnit6::(), myInt6::Int, myDouble6::Double, myFloat6::Float, myBool6::Bool, myList6::[Int], myString6::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B6
data B7 = B7{ myUnit7::(), myInt7::Int, myDouble7::Double, myFloat7::Float, myBool7::Bool, myList7::[Int], myString7::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B7
data B8 = B8{ myUnit8::(), myInt8::Int, myDouble8::Double, myFloat8::Float, myBool8::Bool, myList8::[Int], myString8::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B8
