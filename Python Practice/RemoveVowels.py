text = input("Please Enter the sentence : ")
vowels = "aeiouAEIOU"
word = ""
for i in text:
    if i not in vowels:
        word+=i

print(f"Without Vowels: {word}")