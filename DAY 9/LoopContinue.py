#printing even numbers with continue
n=int(input())
for i in range(1,n+1):
    if i%2!=0:
        continue
    print(i,end=' ')