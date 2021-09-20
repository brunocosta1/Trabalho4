-- Função que verifica se tá vazia

empty :: [Int] -> Bool
empty [] = True
empty (corpo) = False

-- Considerando que o topo da pilha seja sempre o primeiro elemento 

push :: Int -> [Int] -> [Int]
push x []  = [x]
push x (corpo) = (x : corpo)

-- Dando push em mais valores simultaneamente (também serve para dar push em uma pilha e outra)

push_n_values :: [Int] -> [Int] -> [Int]
push_n_values [] (corpo) = corpo
push_n_values (x : []) (corpo) = x : corpo
push_n_values (cab1 : corpo1) (corpo2) = cab1 : push_n_values (corpo1) (corpo2)

-- Função pop

pop :: [Int] -> [Int]
pop [] = []
pop (cab : []) = [cab]
pop (cab : corpo) = (corpo)

-- Função pop chamada n vezes


pop_n_values 0 (cab:corpo) = (cab:corpo)
pop_n_values n [] = []
pop_n_values n (cab:corpo) = pop_n_values (n-1) (corpo)

-- Função que retorna o que há no topo da pilha

top :: [Int] -> Int 
top (cab:corpo) = cab
