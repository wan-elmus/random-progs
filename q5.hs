

minList :: [Float] -> Float
minList xs = foldr (\x y -> if x < y then x else y) (last xs) xs
