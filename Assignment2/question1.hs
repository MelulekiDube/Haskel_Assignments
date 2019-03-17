module Question1 where

data Op = Add | Mul deriving (Show)  
data Expr = Val Int | App Op Expr Expr deriving (Show)  

eval :: Expr -> Int
values :: Expr -> [ Int ]

apply Add x y = x +y
apply Mul x y = x*y
eval (Val n) = n
eval (App o l r) = apply o (eval l) (eval r)

values (Val n) = [n]
values (App _ l r) = values l ++ values r