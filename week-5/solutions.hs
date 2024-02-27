import Distribution.Simple.Program.HcPkg (list)

headPlusOne :: [Int] -> Int
headPlusOne [] = -1
headPlusOne (x : xs) = x + 1

duplicateHead :: [a] -> [a]
duplicateHead [] = []
duplicateHead (x : xs) = x : x : xs

rotate :: [a] -> [a]
rotate [] = []
rotate [x] = [x]
rotate (x : y : xs) = y : x : xs

listLength :: [a] -> Int
listLength [] = 0
listLength (x : xs) = 1 + listLength xs

multAll :: [Int] -> Int
multAll [] = 1
multAll (x : xs) = x * multAll xs

-- Check this
andAll :: [Bool] -> Bool
andAll [] = True
andAll (x : xs) = x && andAll xs

orAll :: [Bool] -> Bool
orAll [] = False
orAll (x : xs) = x || orAll xs

-- Tidy up
countIntegers :: Int -> [Int] -> Int
countIntegers a (x : xs)
  | xs == [] = 0
  | a == x = 1 + countIntegers a xs
  | otherwise = countIntegers a xs

removeAll :: Int -> [Int] -> [Int]
removeAll _ [] = []
removeAll a (x : xs)
  | a == x = removeAll a xs
  | otherwise = x : removeAll a xs

-- Check
removeAllButFirst :: Int -> [Int] -> [Int]
removeAllButFirst _ [] = []
removeAllButFirst a (x : xs)
  | a == x = x : removeAll a xs
  | otherwise = x : removeAllButFirst a xs

type StudentMark = (String, Int)
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


listMarks :: 

sorted :: [Int] -> Bool
sorted [] = True
sorted (x : y : xs)
  | x < y = sorted xs
  | otherwise = False

prefix :: [Int] -> [Int] -> Bool
prefix [] _ = True
prefix _ [] = False
prefix (x : xs) (y : ys)
  | x == y = prefix xs ys
  | otherwise = False

subSequence :: [Int] -> [Int] -> Bool
subSequence [] _ = True
subSequence _ [] = False
subSequence xs (y : ys) = prefix xs (y : ys) || subSequence xs ys