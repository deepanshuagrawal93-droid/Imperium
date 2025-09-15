line = "I love Python"
line1 = line[::-1]
print(line1)

sameLine = line.split()
reversedLine = sameLine[::-1]
final = " ".join(reversedLine)
print(final)