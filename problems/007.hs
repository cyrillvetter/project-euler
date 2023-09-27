main = print $ sieve [2..] !! 10_000

sieve :: [Int] -> [Int]
sieve (p : xs) = p : sieve [ x | x <- xs, x `mod` p > 0 ]