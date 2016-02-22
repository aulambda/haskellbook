-- cipher.hs
-- Chapter exercises

module Cipher where
import           Data.Char

-- these only work with lowercase letters and don't quite support spaces. I might try and fix that later. There's a lot else that could be done to clean this up.

cipher :: String -> String
cipher string = map toChar (map (+3) (map toNum string))
  where
    toChar x
      | x > 26 = chr ((x - 26) + 96)
      | otherwise = chr (x + 96)
    toNum x = ord x - 96

uncipher :: String -> String
uncipher string = map fromNum (map (+ (-3)) (map fromChar string))
  where
    fromChar x = ord x - 96
    fromNum x
      | x < 1 = chr ((x + 26) + 96)
      | otherwise = chr (x + 96)
