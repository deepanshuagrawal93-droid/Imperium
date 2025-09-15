year = int(input("Please enter the year: "))

if (year%400 ==0) or (year%100!=0 and year%4==0):
    print("it's a leap year")
else:
    print("not a leap year")