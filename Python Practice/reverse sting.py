text = input("Please enter the word: ")
reversed_text = ""
for i in text:
    reversed_text = i + reversed_text  # put each char at the beginning
print(reversed_text)
