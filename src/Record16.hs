{-# LANGUAGE DeriveGeneric, DerivingVia #-}
module Record16 where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data B01 = B01{ myUnit01::(), myInt01::Int, myDouble01::Double, myFloat01::Float, myBool01::Bool, myList01::[Int], myString01::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B01
data B02 = B02{ myUnit02::(), myInt02::Int, myDouble02::Double, myFloat02::Float, myBool02::Bool, myList02::[Int], myString02::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B02
data B03 = B03{ myUnit03::(), myInt03::Int, myDouble03::Double, myFloat03::Float, myBool03::Bool, myList03::[Int], myString03::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B03
data B04 = B04{ myUnit04::(), myInt04::Int, myDouble04::Double, myFloat04::Float, myBool04::Bool, myList04::[Int], myString04::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B04
data B05 = B05{ myUnit05::(), myInt05::Int, myDouble05::Double, myFloat05::Float, myBool05::Bool, myList05::[Int], myString05::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B05
data B06 = B06{ myUnit06::(), myInt06::Int, myDouble06::Double, myFloat06::Float, myBool06::Bool, myList06::[Int], myString06::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B06
data B07 = B07{ myUnit07::(), myInt07::Int, myDouble07::Double, myFloat07::Float, myBool07::Bool, myList07::[Int], myString07::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B07
data B08 = B08{ myUnit08::(), myInt08::Int, myDouble08::Double, myFloat08::Float, myBool08::Bool, myList08::[Int], myString08::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B08
data B09 = B09{ myUnit09::(), myInt09::Int, myDouble09::Double, myFloat09::Float, myBool09::Bool, myList09::[Int], myString09::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B09
data B10 = B10{ myUnit10::(), myInt10::Int, myDouble10::Double, myFloat10::Float, myBool10::Bool, myList10::[Int], myString10::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B10
data B11 = B11{ myUnit11::(), myInt11::Int, myDouble11::Double, myFloat11::Float, myBool11::Bool, myList11::[Int], myString11::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B11
data B12 = B12{ myUnit12::(), myInt12::Int, myDouble12::Double, myFloat12::Float, myBool12::Bool, myList12::[Int], myString12::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B12
data B13 = B13{ myUnit13::(), myInt13::Int, myDouble13::Double, myFloat13::Float, myBool13::Bool, myList13::[Int], myString13::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B13
data B14 = B14{ myUnit14::(), myInt14::Int, myDouble14::Double, myFloat14::Float, myBool14::Bool, myList14::[Int], myString14::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B14
data B15 = B15{ myUnit15::(), myInt15::Int, myDouble15::Double, myFloat15::Float, myBool15::Bool, myList15::[Int], myString15::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B15
data B16 = B16{ myUnit16::(), myInt16::Int, myDouble16::Double, myFloat16::Float, myBool16::Bool, myList16::[Int], myString16::String } deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet B16
