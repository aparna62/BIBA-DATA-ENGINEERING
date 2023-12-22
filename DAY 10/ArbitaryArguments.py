def myfun(*myargs):
    for i in myargs:
        print(i)
myfun("aparna",20,"appu",80,89.0)

def myfun2(**kargs):
    '''it is keyword arbitary arguments'''
    for key,value in kargs.items():
        print(key,value)
myfun2(firstname="aparna",lastname="reddy",age=20)
print(myfun2.__doc__)
        