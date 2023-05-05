

deleteFirstAndThird :: [a] -> [a]
deleteFirstAndThird xs = case xs of
  [] -> []
  [_] -> xs
  [_, _] -> xs
  (_:x:_:xs) -> x : xs

-- Call the function with a list of integers
main = do
  let myList = [1, 2, 3, 4, 5]
  print (deleteFirstAndThird myList) -- Output: [2,4,5]