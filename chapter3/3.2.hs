bmiTell :: Double -> Double -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.0 = "You're underweght , you emo , you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal.\
                                     \ Pffft, I bet you're ugly"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                   = "You're an whale, congratulations!"


--Ordクラスは何かを順序付けるためのクラス
max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b    = b
    | otherwise = a


myCompare :: (Ord a) => a -> a -> Ordering
x `myCompare` y
    | x == y    = EQ
    | x > y     = GT
    | otherwise = LT
