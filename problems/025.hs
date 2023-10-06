main = print $ fibonacciIndex 1 2 2

threshold :: Integer
threshold = 10^999

fibonacciIndex :: Integer -> Integer -> Int -> Int
fibonacciIndex x y i
    | x >= threshold = i
    | otherwise = fibonacciIndex y (x + y) (i + 1)