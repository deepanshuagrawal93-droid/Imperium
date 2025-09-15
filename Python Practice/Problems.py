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

passwordLength=int(input("Please Enter the password length: "))
upperCase= input("Do u want to have upper case character(y/n)?").lower() =="y"
lowerCase= input("Do u want to have lower case character(y/n)?").lower() =="y"
num= input("Do u want to have numbers(y/n)?").lower() =="y"
specialChar= input("Do u want to have specialCharacters(y/n)?").lower() =="y"

characters=""
password=[]
if upperCase:
    characters+= string.ascii_uppercase
if lowerCase:
    characters+=string.ascii_lowercase
if num:
    characters+=string.digits
if specialChar:
    characters+=string.punctuation
if not characters:
    print("You must choose at least 1 character type")

else:
    password = "".join(random.choice(characters) for i in range(passwordLength))
    print(f"Your randomly generated password is {password}")
