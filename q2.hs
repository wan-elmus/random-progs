
largerInPair :: Ord a => [(a,a)] -> [a]
largerInPair [] = []
largerInPair ((x,y):xs) = max x y : largerInPair xs
