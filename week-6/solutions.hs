import Data.Char (isLower)

mult10 :: [Int] -> [Int]
mult10 nums = map (*10) nums

onlyLowerCase :: String -> String
onlyLowerCase = filter isLower

orAll :: [Bool] -> Bool
orAll = foldr (||) False

sumSquares :: [Int] -> Int
sumSquares = sum . map (^2)

zeroToTen :: [Int] -> [Int]
zeroToTen = filter (\x -> x >= 0 && x <= 10)

-- Write a function productSquareRoots that returns the product of the square roots of
-- all non-negative numbers in the given list

squareRoots :: [Float] -> [Float]
squareRoots = map sqrt . filter (>= 0)

