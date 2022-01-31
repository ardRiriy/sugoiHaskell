--product関数はIntのリストを受け取ってその要素の積を返す
factorial :: Integer  -> Integer 
factorial n = product [1..n]


--circumfence : 円周
circumfence :: Float -> Float 
circumfence r = 2 * pi * r

circumfence' :: Double -> Double 
circumfence' r = 2 * pi * r