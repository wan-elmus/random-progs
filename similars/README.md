
# SIMILAR WORKING PROGRAMS

## Q2

-- larger_in_pair :: Ord a => [(a,a)] -> [a]
-- larger_in_pair [] = []
-- larger_in_pair ((x,y):ps) = max x y : larger_in_pair ps

-- -- Define a list of pairs
-- myPairs = [(1.0, 2.5), (4.7, 3.6), (5.5, 8.8)]

-- -- Call the larger_in_pair function with the list of pairs
-- newList = larger_in_pair myPairs

-- -- Print the result
-- print newList  -- Output: [2.5,4.7,8.8]

## Q3

-- add2lists :: [Int] -> [Int] -> [Int]
-- add2lists [] [] = []
-- add2lists xs [] = xs
-- add2lists [] ys = ys
-- add2lists (x:xs) (y:ys) = x + y : add2lists xs ys

-- -- Define two lists of integers
-- list1 = [1, 3]
-- list2 = [2, 4]

-- -- Call the add2lists function with the two lists
-- newList = add2lists list1 list2

-- -- Print the result
-- print newList  -- Output: [3, 7]

-- -- Define two other lists of integers with different lengths
-- list3 = [2, 4]
-- list4 = [3]

-- -- Call the add2lists function with the two lists
-- newList = add2lists list3 list4

-- -- Print the result
-- print newList  -- Output: [5, 4]

-- -- Define two other lists of integers with different lengths
-- list5 = [1, 4]
-- list6 = [5, 3, 1, 8, 9]

-- -- Call the add2lists function with the two lists
-- newList = add2lists list5 list6

-- -- Print the result
-- print newList  -- Output: [6, 7, 1, 8, 9]

-- -- Call the add2lists function with two empty lists
-- newList = add2lists [] []

-- -- Print the result
-- print newList  -- Output: []

## Q4

-- pairProduct :: [(Int, Int)] -> [Int]
-- pairProduct pairs = map (\(x, y) -> x * y) pairs

-- -- Define a list of integer pairs
-- pairs = [(2, 3), (4, 5), (6, 7)]

-- -- Call the pairProduct function with the list of pairs
-- products = pairProduct pairs

-- -- Print the result
-- print products  -- Output: [6, 20, 42]

## Q5

-- minimumFloat :: [Float] -> Float
-- minimumFloat xs = foldr1 (\x y -> if x < y then x else y) xs

-- -- Define a list of Float numbers
-- numbers = [3.5, 2.0, 5.2, 1.8, 4.6]

-- -- Call the minimumFloat function with the list of numbers
-- minValue = minimumFloat numbers

-- -- Print the result
-- print minValue  -- Output: 1.8

## Q6

-- between_3_and_4 :: [Float] -> [Float]
-- between_3_and_4 xs = filter (\x -> x >= 3.0 && x <= 4.0) xs

-- -- Define a list of Float numbers
-- numbers = [2.5, 3.2, 4.1, 2.9, 3.8, 1.5]

-- -- Call the betweenThreeAndFour function with the list of numbers
-- result = betweenThreeAndFour numbers

-- -- Print the result
-- print result  -- Output: [3.2, 3.8]

## Q4 python

def multiply_pairs(pair_list):
     return list(map(lambda pair: pair[0] * pair[1], pair_list))

 if __name__ == '__main__':
     import sys
     import ast

     if len(sys.argv) != 2:
         print('Usage: python3 prog3_q4.py <pair_list>')
         sys.exit(1)

     pair_list = ast.literal_eval(sys.argv[1])
     result_list = multiply_pairs(pair_list)
     print(result_list)

## Q5 python

from functools import reduce

def find_min(num_list):
    return reduce(lambda a, b: a if a < b else b, num_list)

if __name__ == '__main__':
    import sys
    import ast

    if len(sys.argv) != 2:
        print('Usage: python3 prog3_q5.py <num_list>')
        sys.exit(1)

    num_list = ast.literal_eval(sys.argv[1])
    min_val = find_min(num_list)
    print(min_val)

## Q6 python

def find_between_3_and_4(num_list):
    return list(filter(lambda x: 3.0 <= x <= 4.0, num_list))

if __name__ == '__main__':
    import sys
    import ast

    if len(sys.argv) != 2:
        print('Usage: python3 prog3_q6.py <num_list>')
        sys.exit(1)

    num_list = ast.literal_eval(sys.argv[1])
    filtered_list = find_between_3_and_4(num_list)
    print(filtered_list)
