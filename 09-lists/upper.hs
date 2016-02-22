-- upper.hs
-- Chapter Exercises

module Upper where
import           Data.Char

capitalize :: String -> String
capitalize word = toUpper (head word) : tail word

yell :: String -> String
yell [] = []
yell word = toUpper (head word) : yell (tail word)

ola :: String -> Char
ola word = toUpper (head word)

olaComposed word = (toUpper . head) word

olaPointFree = toUpper . head
