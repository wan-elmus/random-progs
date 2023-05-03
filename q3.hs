

add2lists :: [Int] -> [Int] -> [Int]
add2lists [] [] = []
add2lists xs [] = xs
add2lists [] ys = ys
add2lists (x:xs) (y:ys) = (x+y) : add2lists xs ys

