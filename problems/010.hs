main = print $ sum $ takeWhile (< 2_000_000) primes
 
primes :: [Int]
primes = 2: 3: sieve (tail primes) [5,7..]
    where
        sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]
            where (h,~(_:t)) = span (< p*p) xs