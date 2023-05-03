

import sys

def main():
    args = sys.argv[1:]
    if len(args) != 2:
        print("Usage: python3 prog3_q6.py filter '[1.0,3.0,2.0,4.0]'")
        return
    input_list = eval(args[1])
    result = list(filter(lambda x: 3.0 <= x <= 4.0, input_list))
    print(result)

if __name__ == '__main__':
    main()

