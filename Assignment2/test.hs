import Question4
import Question1

exprs :: [ Int ] -> [ Int ]


exprs [] = []
exprs ns = [([l], [r])|(ls, rs)<-split ns
 ,l <- exprs ls
 ,r <- exprs rs]