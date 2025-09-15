number = int(input("Please enter the number "))

OddSum = 0
EvenSum = 0

for i in range(0,number+1):
    if i%2==0:
        EvenSum += i
    else:
        OddSum +=i

print(f"Even Sum is {EvenSum}")
print(f"Odd Sum is {OddSum}")