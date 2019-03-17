module Question3 where
import Question2
perms :: [ Int ] -> [ [ Int ] ]

perms [] = [[]]
perms [n] = [[n]]

perms xs = [i:j| i<-xs, j<- perms (delete  i xs)]