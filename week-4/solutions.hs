import Data.Char

type StudentMark = (String, Int)

sumDifference :: Int -> Int -> (Int, Int)
sumDifference a b = (a + b, a - b)

-- Fix
grade :: StudentMark -> Char
grade (name, mark)
  | mark >= 70 = 'A'
  | mark >= 60 = 'B'
  | mark >= 50 = 'C'
  | mark >= 40 = 'D'
  | mark < 40 = 'F'
  | mark < 0 || mark > 100 = error "Invalid mark"

-- Fix
capMark :: StudentMark -> StudentMark
capMark (name, mark)
  | mark >= 40 = (name, 40)
  | mark < 40 && mark >= 0 = (name, mark)
  | otherwise = error "Invalid mark"

firstNumbers :: Int -> [Int]
firstNumbers n = [1 .. n]

firstSquares :: Int -> [Int]
firstSquares n = [i ^ 2 | i <- firstNumbers n]

capitalise :: String -> String
capitalise str = [toUpper i | i <- str]

onlyDigits :: String -> String
onlyDigits str = [i | i <- str, isDigit i]

testData :: [StudentMark]
testData =
  [ ("John", 53),
    ("Sam", 16),
    ("Kate", 85),
    ("Jill", 65),
    ("Bill", 37),
    ("Amy", 22),
    ("Jack", 41),
    ("Sue", 71)
  ]

capMarks :: [StudentMark] -> [StudentMark]
capMarks studentList = [capMark i | i <- studentList]

gradeStudents :: [StudentMark] -> [(String, Char)]
gradeStudents studentList = [(i, grade (i, j)) | (i, j) <- studentList]

duplicate :: String -> Int -> String
-- duplicate str count
--   | count == 1 = str
--   | otherwise = str ++ duplicate str (count - 1)
duplicate str count = concat [str | _ <- [1 .. count]]

-- check last  testcase
divisors :: Int -> [Int]
divisors a = [i | i <- [1 .. a], mod a i == 0]

isPrime :: Int -> Bool
isPrime a = a `elem` nums && 1 `elem` nums && length nums == 2
  where
    nums = divisors a

split :: [(a, b)] -> ([a], [b])
-- split pairList = ([fst i | i <- pairList], [snd i | i <- pairList])
split pairList = ([i | (i, _) <- pairList], [j | (_, j) <- pairList])
