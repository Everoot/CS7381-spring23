x = 1
n = 4
j = n

# outer loop with j

while True:
    k = n

    # inner loop with k

    while True:
        x = x + 2*j + 1
        print(x, end=" ")
        k -= 1
        if (k == 0):
            break

    j -= 1
    if (j == 0):
        break