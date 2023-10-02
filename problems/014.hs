import Data.List (maximumBy)
import Data.Ord (comparing)

main = print $ fst $ maximumBy (comparing snd) $ map (\n -> (n, collatzLength n 1)) [1..999_999]

collatzLength :: Int -> Int -> Int
collatzLength 1 c = c
collatzLength n c = collatzLength next (c + 1)
    where next
              | even n = n `div` 2
              | otherwise = 3*n + 1