{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}
module Message.Foo where
import GHC.Generics
import Data.Binary

newtype Test =  Message Payload
    deriving stock Generic
    deriving anyclass Binary
    deriving Show
    deriving Eq


data Payload = 
        List [Int]
    |   String String
    deriving stock Generic
    deriving anyclass Binary
    deriving Show
    deriving Eq

foo1 = print "foo1"