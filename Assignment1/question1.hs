_product ::Num a=>[a]->a
_product ns = foldr (*) 1 ns