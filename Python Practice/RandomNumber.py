import random
secretNum=random.randint(1,100)
print(secretNum)
attempts=0
max_attempts=5

while attempts<max_attempts:
    try:
        userGuess = int(input("Enter a number between 1 and 100: "))
    except ValueError:
        attempts += 1
        print("Please enter a valid number.")
        continue

    if not 1 <= userGuess <= 100:
        attempts += 1
        print("Number out of range! Try again.")
        continue
    attempts+=1
    if secretNum>userGuess:
        print(f"You guess lil bit low. Please try again. You have {max_attempts-attempts} attempts left")
    elif secretNum<userGuess:
        print(f"You guess lil bit high. Please try again. You have {max_attempts-attempts} attempts left")
    else:
        print(f"Bingo! You got it right in {attempts} attempts")
        break
else:
    print("You ran out of max attempts. Thanks for playing")