{-# LANGUAGE DeriveGeneric #-}
module Record08 where
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

