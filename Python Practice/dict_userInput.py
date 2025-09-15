person = {"name": "Deep", "city": "Delhi", "age": 30}
UI1 = input("Please enter city or country to check")

if UI1  in person:
    print("yes, it exist")
else:
    print("Try again")