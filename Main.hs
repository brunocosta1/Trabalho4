import Data.Maybe

data Stack a = Stack [a] deriving Show

empty :: Stack a
empty = Stack []

push :: a -> Stack a -> Stack a
push x (Stack xs) = Stack (x:xs)

pop :: Stack a -> (Maybe a, Stack a)
pop (Stack []) = (Nothing, Stack [])
pop (Stack (x:xs)) = (Just x, Stack xs)

push_N_values [] (Stack xs) = Stack xs
push_N_values (x : []) (Stack xs) = push x (Stack xs)
push_N_values (cab:corpo) (Stack xs) = Stack(cab : push_N_values corpo xs) 
