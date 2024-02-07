absolute :: Int -> Int
absolute value | value < 0 = -value | value >= 0 = value

sign :: Int -> Int
sign input | input > 0 = 1 | input == 0 = 0 | input < 0 = -1

howManyEqual :: Int -> Int -> Int -> Int
howManyEqual a b c
  | a == b && b == c && c == a = 3
  | a == b && b /= c || a == c && c /= b || b == c && c /= a = 2
  | otherwise = 0

sumDiagonalLengths :: Float -> Float -> Float -> Float
sumDiagonalLengths squareOne squareTwo squareThree =
  getLength squareOne + getLength squareTwo + getLength squareThree
  where
    getLength sideLength = sqrt (2 * (sideLength ^ 2))

taxiFare :: Int -> Float
taxiFare distance
  | distance <= 10 = 2.20 + (0.5 * fromIntegral distance)
  | distance > 10 = 2.20 + (0.5 * 10) + (0.3 * fromIntegral (distance - 10))

howManyAboveAverage :: Int -> Int -> Int -> Int
howManyAboveAverage a b c
  | a > avg && b > avg || a > avg && c > avg || b > avg && c > avg = 2
  | a > avg || b > avg || c > avg = 1
  | otherwise = 0
  where
    avg = (a + b + c) `div` 3

-- TODO - write helper function that can
-- return month for validDate + daysInMonth

validDate :: Int -> Int -> Bool
validDate day month
  | month == 1 = day <= 31
  | month == 2 = day <= 28
  | month == 3 = day <= 31
  | month == 4 = day <= 30
  | month == 5 = day <= 31
  | month == 6 = day <= 30
  | month == 7 = day <= 31
  | month == 8 = day <= 31
  | month == 9 = day <= 30
  | month == 10 = day <= 31
  | month == 11 = day <= 30
  | month == 12 = day <= 31

daysInMonth :: Int -> Int -> Int
daysInMonth month year
  | month == 1 = 31
  | month == 2 = if isLeapYear then 29 else 28
  | month == 3 = 31
  | month == 4 = 30
  | month == 5 = 31
  | month == 6 = 30
  | month == 7 = 31
  | month == 8 = 31
  | month == 9 = 30
  | month == 10 = 31
  | month == 11 = 30
  | month == 12 = 31
  where
    isLeapYear = year `mod` 4 == 0

main :: IO ()
main = do
  print (absolute 5)
  print (absolute 60)