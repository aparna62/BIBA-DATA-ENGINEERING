class A:
    def __init__(self):
        print("I am parent class")
class B(A):
    def __init__(self):
        print("I am child class")
b=B()
b=A()
