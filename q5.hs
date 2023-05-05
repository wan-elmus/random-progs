

minList :: [Float] -> Float
minList xs = foldr (\x y -> if x < y then x else y) (last xs) xs

-- Call the function with a list of floating-point numbers
main = do
  let myList = [1.5, 2.3, 0.8, 4.2, 3.6]
  print (minList myList) -- Output: 0.8