-- recursiveSum.hs
module RecursiveSum where

-- Recursively sums all the numbers from 1 to the number provided for the 'num' arguments. Thus recursiveSum 5 will equal 15

recursiveSum :: (Num a, Ord a) => a -> a
recursiveSum num = go num 0 1
  where
    go n val count
      | count >= n = val
      | otherwise = go n (val + count) (count + 1)

-- I used Ord instead of Eq as a constraint for the function because this seemed more natural, but the book proposed Eq. I did figure out how to do it using Eq, but didn't like it as much.
