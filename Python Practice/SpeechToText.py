import speech_recognition as sr

# Initialize the recognizer
recognizer = sr.Recognizer()

# Use the microphone as source
with sr.Microphone() as source:
    print("🎤 Speak something...")

    # Adjust for ambient noise
    recognizer.adjust_for_ambient_noise(source)

    # Listen from mic
    audio = recognizer.listen(source)

    print("⏳ Recognizing...")

    try:
        # Convert speech to text using Google's API
        text = recognizer.recognize_google(audio)
        print("📝 You said:", text)

    except sr.UnknownValueError:
        print("❌ Sorry, I could not understand the audio.")
    except sr.RequestError as e:
        print("🔌 Could not request results; check your internet.")
