-- Se necesita una función estaListaOrdenada ordenada, que toma una lista no vacía y dice si está ordenada de menor a mayor. 
-- > estaListaOrdenada [1, 2, 3]
-- True
-- > estaListaOrdenada [1, 2, 2, 4, 5, 6, 6, 70, 90, 91, 91]
-- True
-- > estaListaOrdenada [1, 1, 2, 3, 2, 10, 12, 20]
-- False
-- > estaListaOrdenada []
-- No importa, podría dar cualquier resultado o fallar. 



-- 1. Definirla, utilizando recursividad y sin utilizar sort o cualquier otra función que ordene una lista
-- 2. Definirla nuevamente, utilizando foldl en lugar de recurividad, con las mismas consideraciones del punto anterior
-- 3. Modificar la función, para que funcione con listas vacías (una lista vacía está siempre ordenada)
-- 4. Modificar la función, para que además pueda ordenar de mayor a menor o menor a mayor
-- 5. Dar el tipo de la función
