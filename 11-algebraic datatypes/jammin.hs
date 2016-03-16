-- jammin.hs
-- 11.9 Product Types
module Jammin where
import           Data.Function (on)
import           Data.List


data Fruit
  = Peach
  | Plum
  | Apple
  | Blackberry
  deriving (Eq, Show, Ord)

-- JamJars has a cardinality of 4 * the cardinality of Int which is humongous.
data JamJars = Jam
  { fruit  :: Fruit
  , number :: Int }
  deriving (Eq, Show, Ord)

row1 = Jam Blackberry 7
row2 = Jam Plum 7
row3 = Jam Apple 8
row4 = Jam Apple 9
row5 = Jam Blackberry 7
row6 = Jam Plum 2

allJam :: [JamJars]
allJam = [row1, row2, row3, row4, row5, row6]

totalJam :: [JamJars] -> Int
totalJam = sum . map number

maxJam :: [JamJars] -> JamJars
maxJam = maximumBy f
  where f x y = compare (number x) (number y)

groupJam :: [JamJars] -> [[JamJars]]
groupJam = groupBy (on (==) fruit)  . sortBy compareKind
  where compareKind (Jam k _)(Jam k' _ ) = compare k k'
