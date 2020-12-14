def compute_pi(n):
    pi = 4.0
    for i in range(3, n+2, 2):
        pi = pi * (i-1)/i * (i+1)/i
    return pi

n=1
while n <= 10000000:
    print(n, "\t", compute_pi(n))
    n *= 2
