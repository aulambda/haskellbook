-- vehicles.hs
-- 11.5 What's a type and what's data?

module Vehicles where

data Price
  = Price Integer
  deriving (Eq, Show)

data Size
  = Size Integer
  deriving (Eq, Show)

data Manufacturer
  = Mini
  | Mazda
  | Tata
  deriving (Eq, Show)

data Airline
  = PapuAir
  | CatapultsR'Us
  | TakeYourChancesUnited
  deriving (Eq, Show)

data Vehicle
  = Car Manufacturer Price
  | Plane Airline Size
  deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 500)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane x =
  case x of
    Plane _ _ -> True
    _ -> False

areCars :: [Vehicle] -> [Bool]
areCars = map isCar

getManu :: Vehicle -> Manufacturer
getManu (Car x _) = x

-- This would, I think be the right way to write the getManu function to work on all possible values of the Vehicle type.
getManu' :: Vehicle -> Maybe Manufacturer
getManu' x =
  case x of
    Car a _ -> Just a
    Plane _ _ -> Nothing
