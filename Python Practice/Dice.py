import random

print("Welcome to the dice simulator!!")

while True:
    choice = input(" Roll Again? Y/N ").strip().lower()

    if choice == "y":
        roll = random.randint(1,6)
        print(f'You rolled a {roll}')
    else:
        print("Thanks for playing!")
        break