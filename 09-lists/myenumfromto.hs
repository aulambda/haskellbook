-- myenumfromto.hs
-- 9.5 Using ranges to construct lists

module MyEnum where

myEnumFromTo :: (Ord a, Enum a) => a -> a -> [a]
myEnumFromTo start stop
  | start < stop = start : myEnumFromTo (succ start) stop
  | start == stop = []
myEnumFromTo start _ = [start]
myEnumFromTo  _ stop = [stop]
myEnumFromTo _ _ = []
