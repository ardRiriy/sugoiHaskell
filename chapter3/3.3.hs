bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= skinny = "You're underweght , you emo , you!"
    | bmi <= normal = "You're supposedly normal.\
                                     \ Pffft, I bet you're ugly"
    | bmi <= fat = "You're fat! Lose some weight, fatty!"
    | otherwise                   = "You're an whale, congratulations!"

    where
        bmi = weight / height ^ 2
        (skinny, normal, fat) = (18.0, 25.0, 30.0)


niceGreeting :: String
niceGreeting = "Hello! So very nice to meet you!"

badGreeting :: String
badGreeting = "Oh! Pfft. It's you."

greet :: String -> String
greet "Juan"     = niceGreeting ++ "Juan"
greet "Fernando" = niceGreeting ++ "Fernando"
greet name       = badGreeting ++ " " ++ name

{-
以下の場合はスコープの関係で正しく認識されない.

greet :: String -> String
greet "Juan" = niceGreeting ++ "Juan"
greet "Fernando" = niceGreeting ++ "Fernando"
greet name = badGreeting ++ " " ++ name
where
    niceGreeting = "Hello! So very nice to meet you!"
    badGreeting = "Oh! Pfft. It's you."
-}

initial :: String -> String -> String
initial firstname lastname = [f] ++ "." ++ [l] ++ "."
    where
        (f:_) = firstname
        (l:_) = lastname


calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h |(w, h) <- xs]
    where
        bmi w h = w / h ^ 2
