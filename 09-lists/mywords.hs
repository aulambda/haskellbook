-- mywords.hs
-- 9.6 Extracting portions of lists
-- needs work
module MyWords where
myWords :: String -> String
mywords [] = []
myWords string = takeWhile (/= ' ') string
