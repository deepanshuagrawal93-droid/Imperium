sentence = input("Enter a sentence: ")
words = sentence.split()
long_word =""
max_len =0
for i in sentence:
    if len(i)> max_len:
        long_word =i
        max_len = len(i)

print(f"max length : {max_len}")
print(f"max length word : {long_word}")