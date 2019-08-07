module Main where

import Lib

data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | 
             Rectangle Point Point  
    deriving (Show)

area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 -x1) * (abs $ y2 - y1)


main :: IO ()
main = do
    someFunc

    print (area (Rectangle (Point 0 0) (Point 100 100)))
    print (area (Circle (Point 0 0) 24))