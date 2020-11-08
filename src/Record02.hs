{-# LANGUAGE DeriveGeneric #-}
module Record02 where
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

