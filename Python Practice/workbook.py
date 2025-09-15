# num=input("Please enter a number: ")
# total=0
# for i in num:
#     total+=int(i)
# print(total)
#
#

# list1=[2, 45, 7, 89, 12]
# list1.sort()
# print(list1[-1])


# str1 = "Python is fun"
# vowels=["a","e","i","o","u"]
# num=0
# for i in str1.lower():
#     if i in vowels:
#         num+=1
# print(num)

# string2 = "aabbcdeff"
#
# for i in string2:
#     if string2.count(i)==1:
#         print(i)
#         break
# else:
#     print("not found")

n = int(input("Enter number of terms: "))

a,b =0,1
for i in range(n):
    print(a, end=" ")
    a,b =b,a+b
