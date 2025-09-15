word = input("Please enter the word: ").lower().replace(" ","")
if word == word[::-1]:
    print("Its a palindrome")

else:
    print("not a palindrome")