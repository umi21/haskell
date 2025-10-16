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
    3. foldL : left fold is a function that takes a function, an accumulator, and a list
        and returns a number. It processes the list from left to right by applying the function
        on each element of the list and storing it on the accumulator.
-}

foldL :: (b -> a -> b) -> b -> [a] -> b
foldL _ acc [] = acc
foldL f acc (x:xs) = foldL f (f acc x) xs


{-
    4. foldR : right fold is a function that takes a function, an accumulator, and a list
        and returns a number. It processes the list from right to left by applying the function
        on each element of the list and storing it on the accumulator.
-}

foldR :: (a -> b -> b) -> b -> [a] -> b
foldR _ acc [] = acc
foldR f acc (x:xs) = f x (foldR f acc xs)


{-
    5. count : this function takes an element and a list and counts the occurance of the 
        element.
-}

count :: a -> [a] -> Int
count b xs = [x | x<-xs, x==b]


{-
    6. compose : this function composes two functions, applying the second function to its
        argument and then applying the first function to the result of the second.
-}

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)
