module Question6 where
import Question5
import Question3
import Question1

solve :: [Int] -> Int -> [Expr]

solve ns n = [e | ys <- perms ns
  , e <- exprs ys
  , eval e == n]

