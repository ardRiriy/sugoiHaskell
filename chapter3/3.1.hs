luckey :: Int -> String
luckey 7 = "LUCKY NUMBER SEVEN!"
luckey x = "Sorry, you are out of luck, pal!"
-- palは友人,仲間などの意.英語圏のスラング.


sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe _ = "Not between 1 and 5"


factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)


addVector :: (Double ,Double) -> (Double ,Double) -> (Double ,Double)
addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


--トリプルのタプルに対して各要素を取り出す関数たち
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c


--error関数は文字列を因数にとり,ランタイムエラーを生成する関数.プログラムをクラッシュさせる
head' :: [a] -> a
head' []     = error "Can't call head on an empty list, dummy!"
head' (x:xs) = x


firstLetter :: String -> String
firstLetter ""         = "Woops, there is am empty string"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
