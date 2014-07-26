-- 1: Infieran el tipo
-- 2: Mejoren la expresividad de las funciones llamadas f y g. Si es alguna funcion del Prelude que ya conocen, denle ese nombre

f (x,_)       = x

f (_,y)       = y

g f x y     = f (x,y)

g f p     = f (fst p) (snd p)

f    x         = x

f k _       = k

(f . g) x       = f (g x)

flip f x y      = f y x

f $ x           = f x

head (x:_)        = x

last [x]          = x
last (_:xs)       = last xs

tail (_:xs)       = xs

init [x]          = []
init (x:xs)       = x : init xs

null []           = True
null (_:_)        = False

[]     ++ ys      = ys
(x:xs) ++ ys      = x : (xs ++ ys)

g f xs          = [ f x | x <- xs ]

g p xs       = [ x | x <- xs, p x ]

f  xs          = foldl (++) [] xs

f            = foldl (\n _ -> n + 1) 0

(x:_)  !! 0       = x
(_:xs) !! n | n>0 = xs !! (n-1)

g f z []      = z
g f z (x:xs)  = g f (f z x) xs

g f (x:xs)   = foldl f x xs

iterate f x       = x : iterate f (f x)

g x          = x : g x

f n x     = take n (repeat x)

cycle             = concat.repeat

f n _  | n <= 0  = []
f _ []           = []
f n (x:xs)       = x : f (n-1) xs

f           = foldl1 max
f           = foldl1 min

g f       = concat . map f

f               = zipWith  (\a b -> (a,b))

zipWith z (a:as) (b:bs)   = z a b : zipWith z as bs
zipWith _ _      _        = []

