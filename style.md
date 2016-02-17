# Indentation
Always indent two spaces. Try to keep indentation levels relatively consistent accross the document.
# Guards
If the result of a guard statement is longer than a few words, indent the result of every guard in that set.

Good:
``` haskell
function x y
  | x == 1 =
    function1 . function2 $ fst (x, y + y)
  | otherwise = 0
```
Bad:
``` haskell
function x y
  | x == 1 = (function1 . function2 $ fst (x, y +y))
  | otherwise = 0
```

# Where
Always move to a new line and indent after a where statement.
``` haskell
function x y = go x y 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)
```
# Types

Always indent the `=` and align the `\`. Put derivings in parens

``` haskell
data DividedResult
  = Result (Integer, Integer)
  | DividedByZero
  deriving (Show)
  ```
