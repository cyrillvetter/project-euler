import Data.Char (digitToInt)

main = print $ sum $ map digitToInt $ show $ factorial 100

factorial :: Integer -> Integer
factorial 1 = 1
factorial n = n * factorial (n - 1)