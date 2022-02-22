--以下の例におけるhead'とhead''は同値である.
head' :: [a] -> a
head' []    = error "No head for empty lists!"
head' (x:_) = x

head'' :: [a] -> a
head'' xs =
    case xs of
        []    -> error "No head for empty lists!"
        (x:_) -> x


--case式の利点は関数の式の途中で利用できること.
describeList :: [a] -> String
describeList ls =
    "The list is"
    ++ case ls of
        []  -> "empty."
        [x] -> "a singleton list."
        xs  -> "a long list."



