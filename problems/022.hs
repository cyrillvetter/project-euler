import Data.List (sort)
import Data.Char (isPunctuation, ord)

main = readFile "022.txt" >>= print . sum . (zipWith score [1..]) . sort . parse

score :: Int -> String -> Int
score i = (* i) . sum . map (subtract 64 . ord)

parse :: String -> [String]
parse s =
    case break isPunctuation (dropWhile isPunctuation s) of
        ("", _) -> []
        (name, rest)  -> name : parse rest
