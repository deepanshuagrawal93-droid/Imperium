# Find the Missing Number in an Array (1–N)
# Input: [1, 2, 4, 5] → Output: 3


array1 = [1, 2, 4, 5]
n = len(array1)
missing_num = None
for i in range(1,n+1):
    if i not in array1:
        missing_num =i
print(missing_num)

