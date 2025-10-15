{-
    1. map : takes a function and a list and applies that function to every element in the list,
    producing a new list.
-}

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

