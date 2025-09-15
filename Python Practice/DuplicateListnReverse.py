numlist = [1,1,2,2,3,3,4,4,5,5]
newlist =[]

for i in numlist:
    if i not in newlist:
        newlist.append(i)
print(newlist)

print(newlist[::-1])