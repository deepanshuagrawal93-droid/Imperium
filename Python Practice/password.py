password = input("Please enter your password: ")

'''Is at least 8 characters long
Contains both uppercase and lowercase letters
Has at least one digit
Has at least one special character (like !@#$%^&*)'''

length_ok = len(password) >= 8
lower = any(i.islower() for i in password)
upper = any(i.isupper() for i in password)
num = any(i.isdigit() for i in password)
special = any(i in "!@#$%^&*()~_+" for i in password)

if length_ok and lower and upper and num and special:
    print("✅ Strong Password!")

else:
    print("❌ Weak Password! Please include: ")

    if not length_ok:
        print(" At least 8 characters")
    if not lower:
        print(" At least 1 lower character ")
    if not upper:
        print(" At least 1 upper character")
    if not special:
        print(" At least 1 Special character ")
    if not num:
        print(" At least 1 number ")

