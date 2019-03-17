module Question5 where
import Question4
import Question1

exprs :: [ Int ] -> [ Expr ]
combine :: Expr -> Expr -> [Expr]

combine l r = [App o l r| o<-[Add, Mul]]


exprs [] = []
exprs [n] = [Val n]
exprs ns = [e|(ls, rs)<-split ns
 ,l <- exprs ls
 ,r <- exprs rs
 ,e <- combine l r
 ,values e == ns]