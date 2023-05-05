
largerInPair :: Ord a => [(a,a)] -> [a]
largerInPair [] = []
largerInPair ((x,y):xs) = max x y : largerInPair xs


-- Call the function with a list of pairs of integers
main = do
  let myList = [(1,2), (3,4), (5,2), (6,6)]
  print (largerInPair myList) -- Output: [2,4,5,6]