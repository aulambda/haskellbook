-- myzip.hs
-- 9.11 Zipping Lists

module MyZip where

myZip :: [a] -> [b] -> [(a,b)]
myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (z:zs) = (x,z) : myZip xs zs

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f (x:xs) (z:zs) = f x z : myZipWith f xs zs

myZip' :: [a] -> [b] -> [(a,b)]
myZip' = myZipWith (\a b -> (a,b))
