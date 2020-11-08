{-# LANGUAGE DeriveGeneric #-}
module Record04 where
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

