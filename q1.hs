
deleteFirstAndThird :: [a] -> [a]
deleteFirstAndThird xs = case xs of
  [] -> []
  [_] -> xs
  [_, _] -> xs
  (_:x:_:xs) -> x : xs
