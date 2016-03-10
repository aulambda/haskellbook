-- database.hs
-- 10.6 How to write fold functions
module Database where

import           Data.Time

data DatabaseItem
  = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
              (fromGregorian 1911 5 1)
              (secondsToDiffTime 34123))
  , DbString "Hello, world!"
  , DbNumber 27
  , DbNumber 375
  , DbDate (UTCTime
              (fromGregorian 1921 5 1)
              (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr extract []
  where
    extract (DbDate a) acc = a : acc
    extract _ acc = acc

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr extract []
  where
    extract (DbNumber a) acc = a : acc
    extract _ acc = acc

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

--avgDb :: [DatabaseItem] -> Double
avgDb = avg
  
