

import sys

def main():
    args = sys.argv[1:]
    if len(args) != 2:
        print("Usage: python3 prog3_q4.py map '[(1,3),(2,4)]'")
        return
    input_list = eval(args[1])
    result_list = list(map(lambda pair: pair[0] * pair[1], input_list))
    print(result_list)

if __name__ == '__main__':
    main()

