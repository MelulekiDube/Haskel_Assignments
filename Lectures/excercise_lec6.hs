--A triple (x,y,z) of positive integers is called
--pythagorean if x2 + y2 = z2 Using a list comprehension, define a function
pyths :: Int -> [(Int,Int,Int)]
--that maps an integer n to all such triples with components in [1..n]. For example:
pythagorean::Int->Int->Int->Bool
pythagorean x y z = (x^2+y^2) == z^2
pyths n = [(x,y,z)|x<-[1..n],y<-[1..n],z<-[1..n], pythagorean x y z]


--perfect number
factors ::Int->[Int]
perfects :: Int->[Int]
factors n = [x|x<-[1..n], (n `mod` x ==0 && not (x == n))]
perfects 0 = []
perfects n = perfects (n-1)++[n| ((sum (factors n)) == n)]

scalar_product xs ys= sum[x*y|(x, y)<-zip xs ys]