fib2 :: Integer -> Integer
fib2 n = (vectorFib2 n) ! n

-- (vectorFib2 n) es el vector con índices de 0 a n tal que el valor
-- de la posición i es el i-ésimo número de Finonacci. Por ejemplo,
--    λ> vectorFib2 7
--    array (0,7) [(0,0),(1,1),(2,1),(3,2),(4,3),(5,5),(6,8),(7,13)]
vectorFib2 :: Integer -> Array Integer Integer
vectorFib2 n = v where
  v = array (0,n) [(i,f i) | i <- [0..n]]
  f 0 = 0
  f 1 = 1
  f n = v!(n-1) + v!(n-2)
