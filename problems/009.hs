main = print $ head [x * y * z | x <- [1..1000],
                                 y <- [(x + 1)..(1000 - x)],
                                 let z = 1000 - (x + y),
                                 x^2 + y^2 == z^2]