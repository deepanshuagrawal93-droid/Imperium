import random

print("Welcome to the Rock Paper and Scissors!")

user = input("Please Enter your choice from rock, paper and scissors: ").islower()

computer = random.choice(["rock","paper","scissors"])
print(f"computer chooses: {computer}")
print(f"You chooses: {user}")
if user == computer:
    print("It's a Draw")

elif user == "rock" and computer =="paper":
    print("You Lose")
elif user == "rock" and computer =="scissors":
    print("You Win")
elif user == "paper" and computer =="rock":
    print("You Win")
elif user == "paper" and computer =="scissors":
    print("You Lose")
elif user == "scissors" and computer =="rock":
    print("You Lose")
elif user == "scissors" and computer =="paper":
    print("You Win")