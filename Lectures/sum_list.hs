suml ::[Int]->Int 
suml [] = 0
suml (n:ns) = n + sum ns
main = do
    putStrLn "The sum of the list is:"
    print(suml [x|x<-[1..9]])
    --[1 2 3 4 5 6 7 8 9] exect 45