
# Code Explnations

## Q1

Defines a function called deleteFirstAndThird that takes a list xs of type a as input and returns a new list of the same type a.

The function's logic is to remove the first and third element from the input list xs and return a new list with the remaining elements.

The function uses pattern matching via case statements to handle different scenarios depending on the length of the input list:

If the input list is empty, the function returns an empty list [].
If the input list has only one element, the function returns the input list xs.
If the input list has only two elements, the function returns the input list xs.
If the input list has three or more elements, the function removes the first and third elements from the input list xs using pattern matching, and returns a new list with the remaining elements.

**How to run**
For example:

-- Define the function
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

In the above example, the function deleteFirstAndThird is called with the list [1, 2, 3, 4, 5] as an argument, which removes the first and third elements from the list and returns a new list [2, 4, 5].

## Q2

Defines a function called largerInPair that takes a list of pairs (a,a) where a is any type that can be ordered (Ord a) as input and returns a list of elements of the same type a.

The function's logic is to iterate through the list of pairs and, for each pair, return the larger of the two elements as a new list. The function uses pattern matching to handle two scenarios:

If the input list is empty, the function returns an empty list [].
If the input list is not empty, the function matches the first element of the list to a pair (x,y) and recursively calls largerInPair on the rest of the list xs.
For each pair (x,y) encountered, the function calls the max function to compare x and y, and returns the larger of the two elements. The resulting list will contain the larger elements from each pair in the input list.

**How to run**
For example:

-- Define the function
largerInPair :: Ord a => [(a,a)] -> [a]
largerInPair [] = []
largerInPair ((x,y):xs) = max x y : largerInPair xs

-- Call the function with a list of pairs of integers
main = do
  let myList = [(1,2), (3,4), (5,2), (6,6)]
  print (largerInPair myList) -- Output: [2,4,5,6]

In this example, the function largerInPair is called with the list of pairs [(1,2), (3,4), (5,2), (6,6)] as an argument. The function returns a new list [2, 4, 5, 6] containing the larger elements of each pair in the input list.

## Q3

Defines a function called add2lists that takes two lists of integers [Int] as input and returns a new list of integers. The function returns a list that is the element-wise sum of the two input lists.

The function uses pattern matching via case statements to handle four scenarios:

If both input lists are empty, the function returns an empty list [].
If the first input list xs is not empty but the second input list ys is empty, the function returns the first input list xs.
If the second input list ys is not empty but the first input list xs is empty, the function returns the second input list ys.
If both input lists have at least one element, the function matches the first element of each input list to x and y respectively, and recursively calls add2lists on the rest of the input lists (xs, ys).
For each element (x, y) encountered, the function adds x and y and returns the sum as a new element in the resulting list. The resulting list will contain the element-wise sum of the input lists.

**How to run**
 For example:

-- Define the function
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

In the above example, the function add2lists is called with two lists of integers [1, 2, 3] and [4, 5, 6] as arguments. The function returns a new list [5, 7, 9] containing the element-wise sum of the two input lists.

## Q4

The program defines a function called pairProduct that takes a list of pairs of integers (Int, Int) as input and returns a new list of integers. The function returns a list containing the product of each pair in the input list.

The function uses the map function with a partially applied function (uncurry (*)) as the argument. The map function applies the given function (uncurry (*)) to each element of the input list, and returns a new list containing the results.

The function (uncurry (*)) is a function that takes a pair of integers as input and returns their product. The uncurry function takes a function that takes two arguments and converts it into a function that takes a single pair as its argument. Therefore, (uncurry (*)) can be used to apply the multiplication function (*) to each pair in the input list.

**How to run this program**
For example:

-- Define the function
pairProduct :: [(Int, Int)] -> [Int]
pairProduct = map (uncurry (*))

-- Call the function with a list of pairs of integers
main = do
  let myList = [(1, 2), (3, 4), (5, 6)]
  print (pairProduct myList) -- Output: [2, 12, 30]

From the example, the function pairProduct is called with the list of pairs [(1, 2), (3, 4), (5, 6)] as an argument. The function returns a new list [2, 12, 30] containing the product of each pair in the input list.

## Q5

Defines a function called minList that takes a list of floating-point numbers [Float] as input and returns a single floating-point number. The function returns the minimum value in the input list.

The function uses the foldr function to apply a given binary function to each element in the list, from right to left. In this case, the binary function is defined using a lambda expression \x y -> if x < y then x else y, which compares two values and returns the smaller of the two.

At each iteration, foldr compares the current element of the list x with the accumulated value y and returns the smaller of the two. The initial accumulated value is set to the last element in the list, last xs. This ensures that the function returns a valid result even if the input list is empty.

The resulting value is the minimum value in the input list.

**How to run**
For example:

-- Define the function
minList :: [Float] -> Float
minList xs = foldr (\x y -> if x < y then x else y) (last xs) xs

-- Call the function with a list of floating-point numbers
main = do
  let myList = [1.5, 2.3, 0.8, 4.2, 3.6]
  print (minList myList) -- Output: 0.8

In this example, the function minList is called with the list of floating-point numbers [1.5, 2.3, 0.8, 4.2, 3.6] as an argument. The function returns the minimum value in the list, which is 0.8.

## Q6

Defines a function called betweenThreeAndFour that takes a list of floating-point numbers [Float] as input and returns a new list of floating-point numbers. The function returns a list containing only the elements in the input list that are between 3.0 and 4.0 inclusive.

The function uses the filter function to remove elements from the input list that do not meet the specified condition. In this case, the condition is defined using a lambda expression \x -> x >= 3.0 && x <= 4.0, which returns True if the given element x is between 3.0 and 4.0, and False otherwise.

The filter function applies the lambda expression to each element of the input list, and returns a new list containing only the elements for which the expression returns True.

The resulting list contains only the elements in the input list that are between 3.0 and 4.0 inclusive.

**How to run**
For example:

-- Define the function
betweenThreeAndFour :: [Float] -> [Float]
betweenThreeAndFour = filter (\x -> x >= 3.0 && x <= 4.0)

-- Call the function with a list of floating-point numbers
main = do
  let myList = [1.5, 2.3, 3.0, 3.5, 4.0, 4.2, 5.0]
  print (betweenThreeAndFour myList) -- Output: [3.0, 3.5, 4.0]

In this example, the function betweenThreeAndFour is called with the list of floating-point numbers [1.5, 2.3, 3.0, 3.5, 4.0, 4.2, 5.0] as an argument. The function returns a new list containing only the elements in the input list that are between 3.0 and 4.0 inclusive, which are [3.0, 3.5, 4.0].

## Q4 python

Python script that takes two command-line arguments and calculates the product of the two elements in each tuple of a list of tuples. The script uses the map function and a lambda function to calculate the product of each tuple and returns a list of the results.

How the program works:

The script imports the sys module, which provides access to system-specific parameters and functions.

The main() function is defined. This function is responsible for processing the command-line arguments and calculating the product of the tuples.

It then uses sys.argv to retrieve the command-line arguments. The sys.argv list contains the name of the script and any command-line arguments that were passed to the script.

If the number of command-line arguments is not equal to 2, the script prints an error message and returns.

If the number of command-line arguments is equal to 2, the second argument is parsed using the eval() function. This function evaluates the argument as a Python expression, which in this case is a list of tuples.

It uses the map() function and a lambda function to calculate the product of each tuple in the input list. The lambda function takes a tuple as input and returns the product of its two elements.

The list() function is used to convert the result of map() to a list.

The resulting list is printed to the console.

The main() function is called at the end of the script, which runs the program.

**To run this program, save the code to a file named prog3_q4.py. Open a terminal or command prompt and navigate to the directory where the file is saved. Then, run the following command:**

python3 prog3_q4.py map '[(1,3),(2,4)]'

This will execute the program with the map command and the list of tuples as the second argument. The program will calculate the product of each tuple in the list and print the resulting list to the console. If you pass any other number of arguments or incorrect arguments, the program will print an error message and exit.

## Q5 python

Python script that takes two command-line arguments and calculates the minimum value in a list of numbers using the reduce function from the functools module. The script uses a lambda function with reduce to find the minimum value in the list.

How the program works:

The script imports the sys module, which provides access to system-specific parameters and functions, and the reduce function from the functools module.

The main() function is defined. This function is responsible for processing the command-line arguments and calculating the minimum value in the list.

It uses sys.argv to retrieve the command-line arguments. The sys.argv list contains the name of the script and any command-line arguments that were passed to the script.

If the number of command-line arguments is not equal to 2, the script prints an error message and returns.

If the number of command-line arguments is equal to 2, the second argument is parsed using the eval() function. This function evaluates the argument as a Python expression, which in this case is a list of numbers.

The script then uses the reduce() function and a lambda function to find the minimum value in the input list. The lambda function takes two arguments and returns the minimum of the two.

The result is printed to the console.

The main() function is called at the end of the script, which runs the program.

**To run this program, save the code to a file named prog3_q5.py. Open a terminal or command prompt and navigate to the directory where the file is saved. Then, run the following command:**

python3 prog3_q5.py reduce '[1.0,3.0,2.0,4.0]'

This will execute the program with the reduce command and the list of numbers as the second argument. The program will calculate the minimum value in the list and print the result to the console. If you pass any other number of arguments or incorrect arguments, the program will print an error message and exit.

## Q6 python

This is a Python script that takes two command-line arguments and filters a list of numbers to return only those that fall within a specified range using the filter function. The script uses a lambda function with filter to apply a condition to each element in the list and return only the elements that satisfy that condition.

How the program works:

The script imports the sys module, which provides access to system-specific parameters and functions.

The main() function is defined. This function is responsible for processing the command-line arguments and filtering the list of numbers.

The script then uses sys.argv to retrieve the command-line arguments. The sys.argv list contains the name of the script and any command-line arguments that were passed to the script.

If the number of command-line arguments is not equal to 2, the script prints an error message and returns.

If the number of command-line arguments is equal to 2, the second argument is parsed using the eval() function. This function evaluates the argument as a Python expression, which in this case is a list of numbers.

It uses the filter() function and a lambda function to filter the input list. The lambda function takes one argument and returns True if the argument falls within the range of 3.0 to 4.0, inclusive.

The result is printed to the console.

The main() function is called at the end of the script, which runs the program.

**To run this program, save the code to a file named prog3_q6.py. Open a terminal or command prompt and navigate to the directory where the file is saved. Then, run the following command:**

python3 prog3_q6.py filter '[1.0,3.0,2.0,4.0]'

This will execute the program with the filter command and the list of numbers as the second argument. The program will filter the list to only include numbers between 3.0 and 4.0 (inclusive) and print the resulting list to the console. If you pass any other number of arguments or incorrect arguments, the program will print an error message and exit.
