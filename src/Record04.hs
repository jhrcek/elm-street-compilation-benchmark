{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record04 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B01 = B01{ myUnit01::(), myInt01::Int, myDouble01::Double, myFloat01::Float, myBool01::Bool, myList01::[Int], myString01::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B01
data B02 = B02{ myUnit02::(), myInt02::Int, myDouble02::Double, myFloat02::Float, myBool02::Bool, myList02::[Int], myString02::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B02
data B03 = B03{ myUnit03::(), myInt03::Int, myDouble03::Double, myFloat03::Float, myBool03::Bool, myList03::[Int], myString03::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B03
data B04 = B04{ myUnit04::(), myInt04::Int, myDouble04::Double, myFloat04::Float, myBool04::Bool, myList04::[Int], myString04::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B04
