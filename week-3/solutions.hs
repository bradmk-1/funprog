import Data.Time.Calendar.MonthDay (monthAndDayToDayOfYear)
import GHC.Float (sqrtFloat)
import Text.XHtml (above, base)
import Prelude hiding (gcd, (&&), (||))

infixr 2 ||

infixr 3 &&

(||) :: Bool -> Bool -> Bool
True || _ = True
False || a = a

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
exOr True False = True
exOr False True = True
exOr _ _ = False

-- ifThenElse :: Bool -> Int -> Int -> Int
-- ifThenElse truthyArg a b
--   | truthyArg = a
--   | otherwise = b

ifThenElse :: Bool -> Int -> Int -> Int
ifThenElse True a b = a
ifThenElse False a b = b

-- daysInMonth :: Int -> Int
-- daysInMonth month
--   | month == 2 = 28
--   | month == 4 || month == 6 || month == 9 || month == 11 = 30
--   | month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 = 31

-- Outside a uni excerise we'd just use elem with lists
-- daysInMonth :: Int -> Int
-- daysInMonth 2 = 28
-- daysInMonth 4 = 30
-- daysInMonth 6 = 30
-- daysInMonth 9 = 30
-- daysInMonth 11 = 30
-- daysInMonth 1 = 31
-- daysInMonth 3 = 31
-- daysInMonth 5 = 31
-- daysInMonth 7 = 31
-- daysInMonth 8 = 31
-- daysInMonth 10 = 31
-- daysInMonth 12 = 31

daysInMonth :: Int -> Int
daysInMonth 2 = 28
daysInMonth 4 = 30
daysInMonth 6 = 30
daysInMonth 9 = 30
daysInMonth 11 = 30
daysInMonth _ = 31

validDate :: Int -> Int -> Bool
validDate day month = day <= daysInMonth month && month <=z

-- Don't need to check for negative input as question specifices input
-- is non-negative

-- sumNumbers :: Int -> Int
-- sumNumbers n | n == 0 = 0 | otherwise = n + sumNumbers (n - 1)

sumNumbers :: Int -> Int
sumNumbers 0 = 0
sumNumbers n = n + sumNumbers (n - 1)

-- sumSquares :: Int -> Int
-- sumSquares n | n == 0 = n | otherwise = n ^ 2 + sumSquares (n - 1)

sumSquares :: Int -> Int
sumSquares 0 = 0
sumSquares n = n ^ 2 + sumSquares (n - 1)

-- power :: Int -> Int -> Int
-- power n exponent | exponent == 0 = 1 | otherwise = n * power n (exponent - 1)

power :: Int -> Int -> Int
power n 0 = 1
power n exponent = n * power n (exponent - 1)

sumFromTo :: Int -> Int -> Int
sumFromTo a b
  | a > b = 0
  -- \| a == b = a
  | otherwise = a + sumFromTo (a + 1) b

-- Don't have to account for non-negative
-- Would be edge cases if we did
gcd :: Int -> Int -> Int
gcd a b
  | a == b = a
  | a > b = gcd (a - b) b
  | otherwise = gcd (b - a) a

findRoot :: Int -> Int -> Int
findRoot n s
  | s * s > n = findRoot n (s - 1)
  | otherwise = s

intSquareRoot :: Int -> Int
intSquareRoot n = findRoot n n
