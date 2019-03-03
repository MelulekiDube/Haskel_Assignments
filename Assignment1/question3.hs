halve :: [a]->([a],[a])
h_index :: [a]->Int
h_index ns = (length ns)  `div` 2
halve ns = (take (h_index ns) ns, drop (h_index ns) ns)