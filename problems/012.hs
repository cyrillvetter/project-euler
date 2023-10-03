import Data.List (group)

main = print $ head $ dropWhile ((< 500) . countFactors . primeFactors) $ scanl1 (+) [1..]

countFactors :: [Int] -> Int
countFactors = product . map ((+1) . length) . group

smallestPrimeFactor :: Int -> Int
smallestPrimeFactor n = head [p | p <- [2..], n `mod` p == 0]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n =
    let smallestFactor = smallestPrimeFactor n
    in smallestFactor : primeFactors (n `div` smallestFactor)