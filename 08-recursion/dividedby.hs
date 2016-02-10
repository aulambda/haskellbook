-- dividedby.hs
module DividedBy where

-- Integet division function provided in the chapter
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)

-- The exercise asks us to make the provided function handle division by negative numbers the same way the builtin 'div' handles them, and also make the function work with zero more effectively.

data DividedResult
  = Result (Integer, Integer)
  | DividedByZero
  deriving Show

dividedBy' :: Integer -> Integer -> DividedResult
dividedBy' num denom
  | num == 0 =
    Result (0, denom)
  | denom == 0 =
    DividedByZero
  | num < 0 && denom < 0 =
    Result $ go (negate num) (negate denom) 0
  | num < 0 =
    Result (negate . fst $ go (negate num) denom 0, snd $ go (negate num) denom 0)
  | denom < 0 =
    Result (negate . fst $ go num (negate denom) 0, snd $ go num (negate denom) 0)
  | otherwise =
    Result $ go num denom 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)
