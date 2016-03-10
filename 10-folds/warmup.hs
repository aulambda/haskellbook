-- warmup.hs
module WarmUp where

-- 1
stops = "pbtdkg"
vowels = "aeiou"
-- 1a
zipum = [(x,y,z) | x <- stops, y <- vowels, z <- stops]
-- 1b
zipum2 = [(x,y,z) | x <- stops, y <- vowels, z <- stops, x == 'p']
-- 1c
nouns = ["the cat", "the dog", "the car", "the human", "the platypus"]
verbs = ["loves", "shanked", "devoured", "posseses", "worships", "desires"]
zipSentence = [(x, y, z) | x <- nouns, y <- verbs, z <- nouns, x /= z]

-- 2
seekritFunc :: String -> Int
seekritFunc x = div (sum (map length (words x))) (length (words x))
-- takes a string and breaks it into a list of strings by breaking at spaces. divides the sum of the length of those individual works by the number of words.
-- 3
seekritFunc' x = (/) (realToFrac (sum (map length (words x)))) (realToFrac(length (words x)))
