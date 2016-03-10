-- standardFunctions.hs

module StandardFunctions where

myAnd :: [Bool] -> Bool
myAnd = foldr (&&) True

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr ((||) . f) False

myElem :: Eq a => a -> [a] -> Bool
myElem e = myAny (== e)

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr ((:) . f) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\x xs -> if f x then x:xs else xs) []

myFilter' :: (t -> Bool) -> [t] -> [t]
myFilter' f list = [x | x <- list, f x]

squish :: [[a]] -> [a]
squish = foldr (++) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr ((++) . f) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f = foldr (\a b -> if f a b == GT then a else b) 1

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined
