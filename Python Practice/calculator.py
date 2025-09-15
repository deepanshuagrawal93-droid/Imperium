num1 = int(input(" Enter your 1st number: "))
num2 = int(input(" Enter your 2nd number: "))
op = input("Please enter which operation you want to perform:+, %, *, -: ")

if op == "+":
    result = num1 + num2
    print(result)

elif op == "-":
    result = num1 - num2
    print(result)

elif op == "%":
    result = num1 % num2
    print(result)

elif op == "*":
    result = num1 * num2
    print(result)

