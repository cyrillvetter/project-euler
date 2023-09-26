main = print $ fibo 1 2

fibo :: Int -> Int -> Int
fibo x y
    | x > 4_000_000 = 0
    | otherwise = (if even x then x else 0) + fibo y (x + y)