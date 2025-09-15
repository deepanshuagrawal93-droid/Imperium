import random

numlist = [random.randint(1,100) for i in range(50)]
oddlist = []
evenlist =[]

for i in numlist:
    if i%2==0:
        evenlist.append(i)
    else:
        oddlist.append(i)

print(f"Evenlist: {evenlist}")
print(f"Oddlist: {oddlist}")