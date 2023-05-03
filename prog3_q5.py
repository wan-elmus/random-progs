

import sys
from functools import reduce

def main():
    args = sys.argv[1:]
    if len(args) != 2:
        print("Usage: python3 prog3_q5.py reduce '[1.0,3.0,2.0,4.0]'")
        return
    input_list = eval(args[1])
    result = reduce(lambda x, y: x if x < y else y, input_list)
    print(result)

if __name__ == '__main__':
    main()

