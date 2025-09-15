import tkinter as tk
import random

# Setup
secret = random.randint(1, 10)
attempts = 0
max_attempts = 5


# GUI functions
def check_guess():
    global attempts
    guess = entry.get()

    if not guess.isdigit():
        result_label.config(text="Please enter a valid number.")
        return

    guess = int(guess)
    attempts += 1

    if guess < secret:
        result_label.config(text=f"Too Low! Attempts left: {max_attempts - attempts}")
    elif guess > secret:
        result_label.config(text=f"Too High! Attempts left: {max_attempts - attempts}")
    else:
        result_label.config(text=f"Bingo! You guessed it in {attempts} tries 🎉")
        guess_button.config(state=tk.DISABLED)
        return

    if attempts >= max_attempts:
        result_label.config(text=f"Game Over! The number was {secret}")
        guess_button.config(state=tk.DISABLED)


# GUI layout
window = tk.Tk()
window.title("Number Guessing Game")
window.geometry("300x200")

title_label = tk.Label(window, text="Guess a number (1 to 10):")
title_label.pack(pady=10)

entry = tk.Entry(window)
entry.pack()

guess_button = tk.Button(window, text="Guess", command=check_guess)
guess_button.pack(pady=5)

result_label = tk.Label(window, text="")
result_label.pack(pady=10)

window.mainloop()
