estaOrdenado (anterior, estabaOrdenado) siguiente = 
  (max siguiente anterior, estabaOrdenado && anterior <= siguiente)

estaListaOrdenada (x:xs) = snd.foldl (x, True) estaOrdenado $ xs
