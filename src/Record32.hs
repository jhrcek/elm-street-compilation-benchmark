{-# LANGUAGE DeriveGeneric #-}
module Record32 where
import Data.Aeson (FromJSON, ToJSON, parseJSON, toJSON)
import Elm (Elm, elmStreetParseJson, elmStreetToJson, genericToElmDefinition, toElmDefinition)
import GHC.Generics (Generic, from)

data B01 = B01{ myUnit01::(), myInt01::Int, myDouble01::Double, myFloat01::Float, myBool01::Bool, myList01::[Int], myString01::String } deriving Generic
instance Elm B01 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B01)
instance ToJSON B01 where toJSON = elmStreetToJson
instance FromJSON B01 where parseJSON = elmStreetParseJson

data B02 = B02{ myUnit02::(), myInt02::Int, myDouble02::Double, myFloat02::Float, myBool02::Bool, myList02::[Int], myString02::String } deriving Generic
instance Elm B02 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B02)
instance ToJSON B02 where toJSON = elmStreetToJson
instance FromJSON B02 where parseJSON = elmStreetParseJson

data B03 = B03{ myUnit03::(), myInt03::Int, myDouble03::Double, myFloat03::Float, myBool03::Bool, myList03::[Int], myString03::String } deriving Generic
instance Elm B03 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B03)
instance ToJSON B03 where toJSON = elmStreetToJson
instance FromJSON B03 where parseJSON = elmStreetParseJson

data B04 = B04{ myUnit04::(), myInt04::Int, myDouble04::Double, myFloat04::Float, myBool04::Bool, myList04::[Int], myString04::String } deriving Generic
instance Elm B04 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B04)
instance ToJSON B04 where toJSON = elmStreetToJson
instance FromJSON B04 where parseJSON = elmStreetParseJson

data B05 = B05{ myUnit05::(), myInt05::Int, myDouble05::Double, myFloat05::Float, myBool05::Bool, myList05::[Int], myString05::String } deriving Generic
instance Elm B05 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B05)
instance ToJSON B05 where toJSON = elmStreetToJson
instance FromJSON B05 where parseJSON = elmStreetParseJson

data B06 = B06{ myUnit06::(), myInt06::Int, myDouble06::Double, myFloat06::Float, myBool06::Bool, myList06::[Int], myString06::String } deriving Generic
instance Elm B06 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B06)
instance ToJSON B06 where toJSON = elmStreetToJson
instance FromJSON B06 where parseJSON = elmStreetParseJson

data B07 = B07{ myUnit07::(), myInt07::Int, myDouble07::Double, myFloat07::Float, myBool07::Bool, myList07::[Int], myString07::String } deriving Generic
instance Elm B07 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B07)
instance ToJSON B07 where toJSON = elmStreetToJson
instance FromJSON B07 where parseJSON = elmStreetParseJson

data B08 = B08{ myUnit08::(), myInt08::Int, myDouble08::Double, myFloat08::Float, myBool08::Bool, myList08::[Int], myString08::String } deriving Generic
instance Elm B08 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B08)
instance ToJSON B08 where toJSON = elmStreetToJson
instance FromJSON B08 where parseJSON = elmStreetParseJson

data B09 = B09{ myUnit09::(), myInt09::Int, myDouble09::Double, myFloat09::Float, myBool09::Bool, myList09::[Int], myString09::String } deriving Generic
instance Elm B09 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B09)
instance ToJSON B09 where toJSON = elmStreetToJson
instance FromJSON B09 where parseJSON = elmStreetParseJson

data B10 = B10{ myUnit10::(), myInt10::Int, myDouble10::Double, myFloat10::Float, myBool10::Bool, myList10::[Int], myString10::String } deriving Generic
instance Elm B10 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B10)
instance ToJSON B10 where toJSON = elmStreetToJson
instance FromJSON B10 where parseJSON = elmStreetParseJson

data B11 = B11{ myUnit11::(), myInt11::Int, myDouble11::Double, myFloat11::Float, myBool11::Bool, myList11::[Int], myString11::String } deriving Generic
instance Elm B11 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B11)
instance ToJSON B11 where toJSON = elmStreetToJson
instance FromJSON B11 where parseJSON = elmStreetParseJson

data B12 = B12{ myUnit12::(), myInt12::Int, myDouble12::Double, myFloat12::Float, myBool12::Bool, myList12::[Int], myString12::String } deriving Generic
instance Elm B12 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B12)
instance ToJSON B12 where toJSON = elmStreetToJson
instance FromJSON B12 where parseJSON = elmStreetParseJson

data B13 = B13{ myUnit13::(), myInt13::Int, myDouble13::Double, myFloat13::Float, myBool13::Bool, myList13::[Int], myString13::String } deriving Generic
instance Elm B13 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B13)
instance ToJSON B13 where toJSON = elmStreetToJson
instance FromJSON B13 where parseJSON = elmStreetParseJson

data B14 = B14{ myUnit14::(), myInt14::Int, myDouble14::Double, myFloat14::Float, myBool14::Bool, myList14::[Int], myString14::String } deriving Generic
instance Elm B14 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B14)
instance ToJSON B14 where toJSON = elmStreetToJson
instance FromJSON B14 where parseJSON = elmStreetParseJson

data B15 = B15{ myUnit15::(), myInt15::Int, myDouble15::Double, myFloat15::Float, myBool15::Bool, myList15::[Int], myString15::String } deriving Generic
instance Elm B15 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B15)
instance ToJSON B15 where toJSON = elmStreetToJson
instance FromJSON B15 where parseJSON = elmStreetParseJson

data B16 = B16{ myUnit16::(), myInt16::Int, myDouble16::Double, myFloat16::Float, myBool16::Bool, myList16::[Int], myString16::String } deriving Generic
instance Elm B16 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B16)
instance ToJSON B16 where toJSON = elmStreetToJson
instance FromJSON B16 where parseJSON = elmStreetParseJson

data B17 = B17{ myUnit17::(), myInt17::Int, myDouble17::Double, myFloat17::Float, myBool17::Bool, myList17::[Int], myString17::String } deriving Generic
instance Elm B17 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B17)
instance ToJSON B17 where toJSON = elmStreetToJson
instance FromJSON B17 where parseJSON = elmStreetParseJson

data B18 = B18{ myUnit18::(), myInt18::Int, myDouble18::Double, myFloat18::Float, myBool18::Bool, myList18::[Int], myString18::String } deriving Generic
instance Elm B18 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B18)
instance ToJSON B18 where toJSON = elmStreetToJson
instance FromJSON B18 where parseJSON = elmStreetParseJson

data B19 = B19{ myUnit19::(), myInt19::Int, myDouble19::Double, myFloat19::Float, myBool19::Bool, myList19::[Int], myString19::String } deriving Generic
instance Elm B19 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B19)
instance ToJSON B19 where toJSON = elmStreetToJson
instance FromJSON B19 where parseJSON = elmStreetParseJson

data B20 = B20{ myUnit20::(), myInt20::Int, myDouble20::Double, myFloat20::Float, myBool20::Bool, myList20::[Int], myString20::String } deriving Generic
instance Elm B20 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B20)
instance ToJSON B20 where toJSON = elmStreetToJson
instance FromJSON B20 where parseJSON = elmStreetParseJson

data B21 = B21{ myUnit21::(), myInt21::Int, myDouble21::Double, myFloat21::Float, myBool21::Bool, myList21::[Int], myString21::String } deriving Generic
instance Elm B21 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B21)
instance ToJSON B21 where toJSON = elmStreetToJson
instance FromJSON B21 where parseJSON = elmStreetParseJson

data B22 = B22{ myUnit22::(), myInt22::Int, myDouble22::Double, myFloat22::Float, myBool22::Bool, myList22::[Int], myString22::String } deriving Generic
instance Elm B22 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B22)
instance ToJSON B22 where toJSON = elmStreetToJson
instance FromJSON B22 where parseJSON = elmStreetParseJson

data B23 = B23{ myUnit23::(), myInt23::Int, myDouble23::Double, myFloat23::Float, myBool23::Bool, myList23::[Int], myString23::String } deriving Generic
instance Elm B23 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B23)
instance ToJSON B23 where toJSON = elmStreetToJson
instance FromJSON B23 where parseJSON = elmStreetParseJson

data B24 = B24{ myUnit24::(), myInt24::Int, myDouble24::Double, myFloat24::Float, myBool24::Bool, myList24::[Int], myString24::String } deriving Generic
instance Elm B24 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B24)
instance ToJSON B24 where toJSON = elmStreetToJson
instance FromJSON B24 where parseJSON = elmStreetParseJson

data B25 = B25{ myUnit25::(), myInt25::Int, myDouble25::Double, myFloat25::Float, myBool25::Bool, myList25::[Int], myString25::String } deriving Generic
instance Elm B25 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B25)
instance ToJSON B25 where toJSON = elmStreetToJson
instance FromJSON B25 where parseJSON = elmStreetParseJson

data B26 = B26{ myUnit26::(), myInt26::Int, myDouble26::Double, myFloat26::Float, myBool26::Bool, myList26::[Int], myString26::String } deriving Generic
instance Elm B26 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B26)
instance ToJSON B26 where toJSON = elmStreetToJson
instance FromJSON B26 where parseJSON = elmStreetParseJson

data B27 = B27{ myUnit27::(), myInt27::Int, myDouble27::Double, myFloat27::Float, myBool27::Bool, myList27::[Int], myString27::String } deriving Generic
instance Elm B27 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B27)
instance ToJSON B27 where toJSON = elmStreetToJson
instance FromJSON B27 where parseJSON = elmStreetParseJson

data B28 = B28{ myUnit28::(), myInt28::Int, myDouble28::Double, myFloat28::Float, myBool28::Bool, myList28::[Int], myString28::String } deriving Generic
instance Elm B28 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B28)
instance ToJSON B28 where toJSON = elmStreetToJson
instance FromJSON B28 where parseJSON = elmStreetParseJson

data B29 = B29{ myUnit29::(), myInt29::Int, myDouble29::Double, myFloat29::Float, myBool29::Bool, myList29::[Int], myString29::String } deriving Generic
instance Elm B29 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B29)
instance ToJSON B29 where toJSON = elmStreetToJson
instance FromJSON B29 where parseJSON = elmStreetParseJson

data B30 = B30{ myUnit30::(), myInt30::Int, myDouble30::Double, myFloat30::Float, myBool30::Bool, myList30::[Int], myString30::String } deriving Generic
instance Elm B30 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B30)
instance ToJSON B30 where toJSON = elmStreetToJson
instance FromJSON B30 where parseJSON = elmStreetParseJson

data B31 = B31{ myUnit31::(), myInt31::Int, myDouble31::Double, myFloat31::Float, myBool31::Bool, myList31::[Int], myString31::String } deriving Generic
instance Elm B31 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B31)
instance ToJSON B31 where toJSON = elmStreetToJson
instance FromJSON B31 where parseJSON = elmStreetParseJson

data B32 = B32{ myUnit32::(), myInt32::Int, myDouble32::Double, myFloat32::Float, myBool32::Bool, myList32::[Int], myString32::String } deriving Generic
instance Elm B32 where toElmDefinition _ = genericToElmDefinition $ GHC.Generics.from (error "Proxy for generic elm was evaluated" :: B32)
instance ToJSON B32 where toJSON = elmStreetToJson
instance FromJSON B32 where parseJSON = elmStreetParseJson

