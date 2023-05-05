

betweenThreeAndFour :: [Float] -> [Float]
betweenThreeAndFour = filter (\x -> x >= 3.0 && x <= 4.0)

-- Call the function with a list of floating-point numbers
main = do
  let myList = [1.5, 2.3, 3.0, 3.5, 4.0, 4.2, 5.0]
  print (betweenThreeAndFour myList) -- Output: [3.0, 3.5, 4.0]