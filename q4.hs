

pairProduct :: [(Int,Int)] -> [Int]
pairProduct = map (uncurry (*))

-- Call the function with a list of pairs of integers
main = do
  let myList = [(1, 2), (3, 4), (5, 6)]
  print (pairProduct myList) -- Output: [2, 12, 30]
