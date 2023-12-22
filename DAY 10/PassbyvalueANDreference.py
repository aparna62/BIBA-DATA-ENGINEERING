def fun(x,y):
    print("before swapping")
    print(x)
    print(y)
    print("after swapping")
    x=x+y
    y=x-y
    x=x-y
    print(x)
    print(y)
    
fun(2,3)
