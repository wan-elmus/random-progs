

pairProduct :: [(Int,Int)] -> [Int]
pairProduct = map (uncurry (*))

