module Question4 where
import Question2

split :: [ Int ] -> [([Int], [Int])]
_split :: [Int]->Int ->[([Int], [Int])]

_split ns 1 = [(take 1 ns, drop 1 ns) ]
_split ns n = (_split ns (n-1)) ++ [(take n ns, drop n ns)]

split ns = _split ns ((length ns)-1)