bmiTell :: Double -> Double -> String 
bmiTell weight height
    | bmi <= 18.0 = "You're underweght , you emo , you!"
    | bmi <= 25.0 = "You're supposedly normal.\
                                     \ Pffft, I bet you're ugly"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                   = "You're an whale, congratulations!"
    
    where
        bmi = weight / height ^ 2


niceGreeting :: String 
niceGreeting = "Hello! So very nice to meet you!"

badGreeting :: String 
badGreeting = "Oh! Pfft. It's you."

greet :: String -> String 
greet "Juan" = niceGreeting ++ "Juan"
greet "Fernando" = niceGreeting ++ "Fernando"
greet name = badGreeting ++ " " ++ name

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

