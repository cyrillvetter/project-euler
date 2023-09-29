import Data.Char (digitToInt)

main = do
    number <- readFile "008.txt"
    print . maximum $ map product $ windowsOf 13 $ map digitToInt $ concat $ lines number

windowsOf :: Int -> [a] -> [[a]]
windowsOf size list
    | length list < size = []
    | otherwise = take size list : windowsOf size (drop 1 list)