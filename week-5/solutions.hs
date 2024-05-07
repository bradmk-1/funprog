import Distribution.Simple.Program.HcPkg (list)

headPlusOne :: [Int] -> Int
headPlusOne [] = -1
headPlusOne (x : xs) = x + 1

duplicateHead :: [a] -> [a]
duplicateHead [] = []
duplicateHead (x : xs) = x : x : xs

rotate :: [a] -> [a]
rotate [] = [] ---------------------
rotate [x] = [x] ---------------------------------
rotate (x : y : xs) = y : x : xs

----------

listLength :: [a] -> Int
listLength [] = 0
listLength (x : xs) = 1 + listLength xs

multAll :: [Int] -> Int
multAll [] = 1
multAll (x : xs) = x * multAll xs

andAll :: [Bool] -> Bool
andAll [] = True
andAll (x : xs) = x && andAll xs

orAll :: [Bool] -> Bool
orAll [] = False
orAll (x : xs) = x || orAll xs

-- Tidy up
countIntegers :: Int -> [Int] -> Int
countIntegers a [] = 0
countIntegers a (x : xs)
  | a == x = 1 + countIntegers a xs
  | otherwise = countIntegers a xs

removeAll :: Int -> [Int] -> [Int]
removeAll a [] = []
removeAll a (x : xs)
  | a == x = removeAll a xs
  | otherwise = x : removeAll a xs

removeAllButFirst :: Int -> [Int] -> [Int]
removeAllButFirst a [] = []
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

listMarks :: String -> [StudentMark] -> [Int]
listMarks a [] = []
listMarks a ((name, mark) : xs)
  | a == name = mark : listMarks a xs -- If tuple matches name
  | otherwise = listMarks a xs -- If mark isn't persons

sorted :: [Int] -> Bool
sorted [] = True
sorted [x] = True
sorted (x : y : xs)
  | x <= y = sorted (y : xs) -------------------------------
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
subSequence a (x : xs) = prefix a (x : xs) || subSequence a xs

-- Call prefix on subset
-- If prefix if false, we need to call subsequence on the next
-- Item in the List