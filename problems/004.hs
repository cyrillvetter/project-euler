main = print $ maximum $ filter isPalindrome $ [x * y | x <- [100..999], y <- [100..999]]

isPalindrome :: Int -> Bool
isPalindrome n = s == reverse s
    where s = show n