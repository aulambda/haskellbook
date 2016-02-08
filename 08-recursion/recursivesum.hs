-- recursiveSum.hs
module RecursiveSum where

-- Recursively sums all the numbers from 1 to the number provided for the 'num' arguments. Thus recursiveSum 5 will equal 15

recursiveSum :: (Num a, Ord a) => a -> a
recursiveSum num = go num 0 1
    where go n val count
           | count >= n = val
           | otherwise = go n(val + count) (count + 1)

-- The book suggested the type signature (Eq a, Num a) => a -> a but I couldn't figure out how that would work, so I used Ord instead of Eq, since Ord implements Eq, but not vice versa. There is another way to do this, with just Eq, but it seems less elegant and spreads the work between go's two cases instead of leaving it to the otherwise and letting the base stay just a base.
