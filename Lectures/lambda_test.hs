const1::a->(b->a)
const1 = \x->(\_->x)
concat1 :: [[a]] -> [a]
concat1 xss = [x | xs <- xss, x <- xs]
pairs1 :: [a]->[(a,a)]
pairs1 xs = zip xs (tail xs)
