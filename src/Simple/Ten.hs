{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingVia   #-}

module Simple.Ten where
import Data.Aeson (FromJSON, ToJSON)
import Elm (Elm, ElmStreet (ElmStreet))
import GHC.Generics (Generic)

data A01 = A01 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A01
data A02 = A02 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A02
data A03 = A03 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A03
data A04 = A04 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A04
data A05 = A05 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A05
data A06 = A06 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A06
data A07 = A07 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A07
data A08 = A08 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A08
data A09 = A09 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A09
data A10 = A10 Int deriving stock Generic deriving (Elm, ToJSON, FromJSON) via ElmStreet A10
