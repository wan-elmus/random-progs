

add2lists :: [Int] -> [Int] -> [Int]
add2lists [] [] = []
add2lists xs [] = xs
add2lists [] ys = ys
add2lists (x:xs) (y:ys) = (x+y) : add2lists xs ys

-- Call the function with two lists of integers
main = do
  let list1 = [1, 2, 3]
  let list2 = [4, 5, 6]
  print (add2lists list1 list2) -- Output: [5, 7, 9]