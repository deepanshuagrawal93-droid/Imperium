prime = []
for i in range(1,50):
    if i>1:
        for j in range(2, int(i ** 0.5) + 1):  # check factors up to sqrt(i)
            if i % j == 0:
                break
        else:  # if no divisor found → prime
            prime.append(i)

print(prime)