import pyttsx3
engine = pyttsx3.init()

voices = engine.getProperty('voices')
for index, voice in enumerate(voices):
    print(f"Voice {index}: {voice.name} - {voice.id}")

engine.setProperty('voice', voices[0].id)  # Use voice index 1 or any from the list

# Set the voice properties (optional)
engine.setProperty('rate', 150)     # Speed (words per minute)
engine.setProperty('volume', 1.0)   # Volume (0.0 to 1.0)

# Text you want to say
text = "Hello! I'm ChatGPT, your AI companion. Let's learn something cool today!"

# Speak the text
engine.say(text)
engine.runAndWait()