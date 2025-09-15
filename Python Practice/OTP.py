import random
passwordLength=int(input("Please Enter the password length: "))

def generate_otp(length=passwordLength):
    otp = ''.join(str(random.randint(0, 9)) for i in range(length))
    return otp
print("Your OTP is:", generate_otp())