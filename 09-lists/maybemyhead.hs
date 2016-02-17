-- maybemyhead.hs
-- 9.3 Pattern Matching on Lists

module MaybeMyHead where

maybeMyHead :: [a] -> Maybe a
maybeMyHead [] = Nothing
maybeMyHead (x:[]) = Nothing
maybeMyHead (x:_) = Just x
