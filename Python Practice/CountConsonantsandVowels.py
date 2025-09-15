text = input("Please Enter the sentence : ").lower()
vowels = "aeiou"
num = "1234567890"
vowels_count = 0
cons_count = 0
num_count = 0
spcl_count=0
for i in text:
    if i.isalpha():
        if i in vowels:
            vowels_count+=1
        else:
            cons_count+=1
    elif i.isdigit():
        num_count+=1
    elif not i.isalnum():
        spcl_count +=1

print(f"Vowels Counts is {vowels_count}")
print(f"Consonant Counts is {cons_count}")
print(f"Numbers Counts is {num_count}")
print(f"Spcl char Counts is {spcl_count}")