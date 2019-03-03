fact :: Int -> Int -> Int
fact 0 r= r
fact n r= fact(n-1) (r*n)
factTail n = fact n 1

main = do
   putStrLn "The factoril is:"
   print(factTail 5)
