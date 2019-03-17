module Question2 where

delete :: Int -> [Int] -> [Int]
_delete :: Bool->Int->[Int] -> [Int]


_delete _ _ [] = []

_delete b e (x:xs) 
  | (e == x) && (not b) = _delete True e (xs)
  |otherwise = x:(_delete b e xs)

delete e xs = _delete False e xs