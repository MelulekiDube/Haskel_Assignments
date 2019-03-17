safetail1 :: [a] -> [a]
safetail2 :: [a] -> [a]
safetail3 :: [a] -> [a]

--using conditional expresions
safetail1 arr = if(null arr) then arr else tail arr

--using guards
safetail2 arr | null arr = arr | otherwise = tail arr

--pattern matchin
safetail3 [] = []
safetail3 xs = tail xs