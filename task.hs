{-
    1. map : takes a function and a list and applies that function to every element in the list,
    producing a new list.
-}

_map :: (a -> b) -> [a] -> [b]
_map _ [] = []
_map f (x:xs) = f x : _map f xs


{-
    2. filter : filter is a function that takes a predicate and a list 
        and then returns the list of elements that satisfy the predicate.
-}

_filter :: (a -> Bool) -> [a] -> [a]
_filter _ [] = []
_filter p (x:xs)
    | p x       = x : _filter p xs
    | otherwise = _filter p xs


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
