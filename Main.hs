-- Letra c

empty [] = True
empty (corpo) = False

-- Considerando que o topo da pilha seja sempre o primeiro elemento (letra d)

push x []  = [x]
push x (corpo) = (x : corpo)

-- Letra e/f

push_n_values [] (corpo) = corpo
push_n_values (x : []) (corpo) = x : corpo
push_n_values (cab1 : corpo1) (corpo2) = cab1 : push_n_values (corpo1) (corpo2)


-- Letra g

pop [] = []
pop (cab : []) = [cab]
pop (cab : corpo) = (corpo)

-- Letra h

pop_n_values n (cab:corpo) 
    | n == 0 = (cab : corpo)
    | (cab:corpo) == [] = []
    | otherwise = pop_n_values (n-1) (corpo)

--Letra i

top [] = -1
top (x : []) = x
top (cab : corpo) = cab
