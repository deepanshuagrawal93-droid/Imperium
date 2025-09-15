word = "The black cat climbed the green treec"
word=word.lower()
loc=-1
while True:
    loc = word.find("c",loc+1)
    if loc==-1:
        break
    print(loc)