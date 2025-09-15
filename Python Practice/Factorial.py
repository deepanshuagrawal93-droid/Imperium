from math import factorial

num = int(input(" Enter your number: "))
if num<0:
    print("Please Enter a non negative number")
else:
    factorial =1

    for i in range(1,num+1):
        factorial *= i

    print(f"Factorial is {factorial}")