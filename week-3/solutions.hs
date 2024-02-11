import Data.Time.Calendar.MonthDay (monthAndDayToDayOfYear)
import GHC.Float (sqrtFloat)
import Text.XHtml (above, base)
import Prelude hiding (gcd, (&&))

-- (&&) :: Bool -> Bool -> Bool
-- True && True = True
-- False && True = False
-- True && False = False
-- False && False = False

-- (&&) :: Bool -> Bool -> Bool
-- True && True = True
-- _ && _ = False

(&&) :: Bool -> Bool -> Bool
False && _ = False
True && p = p

-- Use infix here as per sheet

exOr :: Bool -> Bool -> Bool
exOr a b
  | a && not b = True
  | b && not a = True
  | otherwise = False

ifThenElse :: Bool -> Int -> Int -> Int
ifThenElse truthyArg a b
  | truthyArg = a
  | otherwise = b

-- Need to actual using pattern matching here
daysInMonth :: Int -> Int
daysInMonth month
  | month == 2 = 28
  | month == 4 || month == 6 || month == 9 || month == 11 = 30
  | month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 = 31

-- Don't need to check for negative input as question specifices input
-- is non-negative
sumNumbers :: Int -> Int
sumNumbers n | n == 0 = 0 | otherwise = n + sumNumbers (n - 1)

sumSquares :: Int -> Int
sumSquares n | n == 0 = n | otherwise = n ^ 2 + sumSquares (n - 1)

power :: Int -> Int -> Int
power n exponent | exponent == 0 = 1 | otherwise = n * power n (exponent - 1)

sumFromTo :: Int -> Int -> Int
sumFromTo a b
  | a > b = 0
  | a == b = a
  | otherwise = a + sumFromTo (a + 1) b

-- Don't have to account for non-negative
-- Would be edge cases if we did
gcd :: Int -> Int -> Int
gcd a b
  | a == b = a
  | a > b = gcd (a - b) b
  | otherwise = gcd (b - a) a