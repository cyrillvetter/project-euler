main = print $ last $ primeFactors 600851475143

smallestPrimeFactor :: Int -> Int
smallestPrimeFactor n = head [p | p <- [2..], n `mod` p == 0]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n =
    let smallestFactor = smallestPrimeFactor n
    in smallestFactor : primeFactors (n `div` smallestFactor)