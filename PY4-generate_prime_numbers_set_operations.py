odd=set([x*2+1 for x in range(0,5)])
primes=set()
for i in range(2,10):
    j=2
    f=0
    while j<i/2:       #j<i/2 includes 4 but j<=i/2 does not
        if i%j==0:
            f=1
        j+=1
    if f==0:
        primes.add(i)
print("Odd Numbers: ", odd)
print("Prime Numbers: ", primes)
print("Union: ", odd.union(primes))
print("Intersection: ", odd.intersection(primes))
print("Difference: ", odd.difference(primes))
print("Symmetric Difference: ", odd.symmetric_difference(primes))