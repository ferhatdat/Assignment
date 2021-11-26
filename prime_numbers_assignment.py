"""Task : Print the prime numbers which are between 1 to entered limit number (n)."""
def prime(n):
    list_prime = [2,]
    for i in range(3, n):
        for j in range(2, i):
            if i % j == 0:
                break
        else:
            list_prime.append(i)
    print(list_prime)
n = int(input("Limit Number: "))
prime(n)