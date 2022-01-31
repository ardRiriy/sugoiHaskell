removeNoUppercase :: [Char] -> [Char]
removeNoUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


addThree :: Int -> Int -> Int -> Int 
addThree x y z = x + y + z