--10以上のすべての奇数をBANG!に,10以下のすべての奇数をBOOM!に置き換える
boombang xs =
    [if x < 10
        then "BOOM!"
        else "BANG!"|
     x <- xs ,
     odd x] --oddは奇数に対してTrueを返す関数


--length関数の独自実装
--[1 | _ <- xs]はリストxsに対してすべての要素を1に置換したリスト
length' xs = sum [1 | _ <- xs]


-- c `elem` ['A'..'Z']はリストcに含まれる要素が['A'..'Z']のみであるという術語
    --(['A'..'Z']に含まれない小文字,その他はelem関数によりFalseが返される)
removeNoUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
