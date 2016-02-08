-- recursivemult.hs
module RecursiveMult where

-- Multiplies by adding a number  given as a x arguemnt to an initial value of 0 a number of times specified by the y arguement.
recursiveMult :: (Integral a ) => a -> a -> a
recursiveMult 0 _ = 0
recursiveMult _ 0 = 0
recursiveMult x y = go x y 0 0
  where
    go fact1 fact2 count prod
      | count >= fact2 = prod
      | otherwise = go fact1 fact2 (count + 1) (prod + fact1)
