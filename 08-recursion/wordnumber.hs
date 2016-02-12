-- wordnumber.hs
module WordNumber where

import           Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n = numNames !! n
  where
    numNames = ["zero","one","two","three","four", "five", "six", "seven", "eight", "nine"]

digits :: Int -> [Int]
digits x
  |x < 10 = [x]
  |otherwise = digits (div x 10) ++ [mod x 10]

wordNumber :: Int -> String
wordNumber n = concat . intersperse "-" . map digitToWord $ digits n
-- You could also use 'intercalate' from Data.list here, but the exercise encourages 'intersperse', since it makes you think a little harder.
