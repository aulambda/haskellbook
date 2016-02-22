-- comprehensions.hs
-- 9.7 List Comprehensions

module Comprehensions where

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- "First write an expression that will make tuples of the outputs of mySqr and myCube"
myTuple = [(x, y) | x <- mySqr, y <- myCube]

-- "Now alter that function so that it only uses the x and y values that are less than 50."
myTupleLess50 = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

-- "Now apply another function to that list comprehension to determine how many tuples inhabit your output list."
myTupleLength = length myTupleLess50
