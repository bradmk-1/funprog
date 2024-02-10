import Data.Time.Calendar.MonthDay (monthAndDayToDayOfYear)
import Prelude hiding ((&&))

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