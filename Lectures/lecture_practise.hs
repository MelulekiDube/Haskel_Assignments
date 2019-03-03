--LECTURE 5
const1::a->(b->a)
const1 = \x->(\_->x)
--LECTURE 6
concat1 :: [[a]] -> [a]
concat1 xss = [x | xs <- xss, x <- xs]
pairs1 :: [a]->[(a,a)]
pairs1 xs = zip xs (tail xs)
sorted1::Ord a=>[a]->Bool
sorted1 xs = and[x<=y | (x,y)<-pairs1 xs]
positions1 x xs = [i|(x1, i)<-zip xs [0..],x==x1]
count1 ::Char->String->Int
count1 x xs= length[x1|x1<-xs, x1==x]

fact::Int->Int->Int
fact 1 m = m
fact n m = fact (n-1) (n*m)
facto 0 = 1
facto n = fact (n-1) n*1

--lecture 7
twice :: (a->a)->a->a
twice f x = f (f x)