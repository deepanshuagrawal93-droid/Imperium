import random

comp_guess = random.randint(1,100)
attempt=0
max_attempt=7
while attempt<max_attempt:
    guess = int(input("Guess a random number from 1 to 100 "))
    attempt+=1

    if comp_guess==guess:
        print(f"Bingo, you got it correct in {attempt} attempts")
        break
    elif comp_guess > guess:
        print(f"Oops, Too Low. Try Again. You got  {max_attempt - attempt} attempts left")
    elif comp_guess < guess:
        print(f"Oops, Too High. Try Again You got  {max_attempt - attempt} attempts left")
else:
    print(f"Game Over. Computer's guess was {comp_guess}")