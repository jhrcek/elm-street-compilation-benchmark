{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record02 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B01 = B01{ myUnit01::(), myInt01::Int, myDouble01::Double, myFloat01::Float, myBool01::Bool, myList01::[Int], myString01::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B01
data B02 = B02{ myUnit02::(), myInt02::Int, myDouble02::Double, myFloat02::Float, myBool02::Bool, myList02::[Int], myString02::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B02
