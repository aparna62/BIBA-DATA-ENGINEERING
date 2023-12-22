n=int(input())
reverse_no=0
while n!=0:
    temp=n%10
    reverse_no=reverse_no*10+temp
    n=n//10
print(reverse_no)