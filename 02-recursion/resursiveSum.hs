-- recursiveSum.hs
module RecursiveSum where

-- Write a function that recursively sums all numbers from 1 to n, n being the argument. So that if n was 5, you’d add 1 + 2 + 3 + 4 + 5 to get 15. The type should be (Eq a, Num a) => a -> a.

recursiveSum :: (Num a, Ord a) => a -> a
recursiveSum num = go num 0 1
    where go n val count
           | count >= n = val
           | otherwise = go n(val + count) (count + 1)

-- The book suggested the type signature
-- (Eq a, Num a) => a -> a
-- but I couldn't figure out how that would work, so I used Ord instead of Eq, since Ord implements Eq, but not vice versa. There is another way to do this, with just Eq, but it seems less elegant and spreads the work between go's two cases instead of leaving it to the otherwise and letting the base stay just a base.
