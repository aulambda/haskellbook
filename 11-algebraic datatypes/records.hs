-- records.hs
-- 11.9 Product Types
module Records where

data Person
  = Person { name :: String
           , age  :: Int }
           deriving (Eq, Show)

jm = Person "julie" 108
ca = Person "chris" 16
