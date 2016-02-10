-- mccarthy91.hs
module Mc91 where

mc91 :: (Ord a,Num a) => a -> a
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91 (mc91 (n + 11))

-- The call tree for why mc91 has to be recursed twice in the otherwise branch is worth sketching out, it hurts my brain to think about without seeing it written down.
