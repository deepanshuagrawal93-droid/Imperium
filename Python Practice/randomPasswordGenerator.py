'''User chooses:
Password length
Whether to include:
Uppercase letters
Lowercase letters
Numbers
Special characters
Password is randomly generated and displayed.'''
import random
import string

passlen = int(input("Please enter the password length: "))
uppcase= input("Do u want to have upper case character(y/n)?").lower() =="y"
lowcase= input("Do u want to have lower case character(y/n)?").lower() =="y"
num= input("Do u want to have numbers(y/n)?").lower() =="y"
spclchar= input("Do u want to have special characters(y/n)?").lower() =="y"

char = ""

if uppcase:
    char += string.ascii_uppercase
if lowcase:
    char += string.ascii_lowercase
if num:
    char += string.digits
if spclchar:
    char += string.punctuation

if not char:
    print("You must choose at least 1 character type")
else:
    password = "".join(random.choice(char) for i in range(passlen))
    print(f"Your randomly generated password is {password}")