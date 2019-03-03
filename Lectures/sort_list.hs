qsort ::[Int]->[Int] --funciton declaration
qsort [] = []  --base definition

qsort(x:xs) = qsort larger ++ [x] ++ qsort smaller
    where
        smaller = [a|a<-xs, a <=x]
        larger = [b|b<-xs, b >x]
main = do
    putStrLn "Sorted list is:"
    print(qsort[x|x<-[1..10]])
