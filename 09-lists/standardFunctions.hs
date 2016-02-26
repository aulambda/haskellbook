-- standardfunctions.hs
-- Chapter exercises

module Standard where

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs


myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem i (x:xs) = x == i || myElem i xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' i list = myAny ((==) i) list

myReverse :: [a] -> [a]
myReverse [] = []
myReverse list = last list : myReverse (init list)

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain list = squishMap (\x -> x) list

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = head []
myMaximumBy f (x:y:zs)
  | f x y == GT = myMaximumBy f (x:zs)
  | otherwise = myMaximumBy f (y:zs)
myMaximumBy _ (x:[]) = x

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = head []
myMinimumBy f (x:y:zs)
  | f x y == LT = myMinimumBy f (x:zs)
  | otherwise = myMinimumBy f (y:zs)
myMinimumBy _ (x:[]) = x

myMaximum :: (Ord a) => [a] -> a
myMaximum ls = myMaximumBy compare ls

myMinimum :: (Ord a) => [a] -> a
myMinimum ls = myMinimumBy compare ls
