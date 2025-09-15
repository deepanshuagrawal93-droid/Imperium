first = input("Enter first word: ").lower()
second = input("Enter second word: ").lower()

if sorted(first) == sorted(second):
    print("they are anagrams")
else:
    print("they are not")