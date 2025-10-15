{-
    1. map : takes a function and a list and applies that function to every element in the list,
    producing a new list.
-}

_map :: (a -> b) -> [a] -> [b]
_map _ [] = []
_map f (x:xs) = f x : _map f xs


{-
    2. filter : 
-}

{-
    3. foldL : 
-}

{-
    4. foldR : 
-}

{-
    5. count : 
-}


{-
    6. compose : 
-}
