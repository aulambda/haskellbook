-- fibs.hs
--

module Fibs where

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x
fibs20 = take 20 fibs
fibsLess100 = [x | x <- fibs', x < 100]
  where fibs' = take 100 fibs

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)


scanFact n = scanl (*) 1 [1..n]
