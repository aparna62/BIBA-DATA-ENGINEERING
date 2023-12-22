class A:
    def __init__(self):
        print("I am grandfather class")
class B(A):
    def display(self):
        print("I am father class")
class C(B):
    def display(self):
        print("I am child class")
c=C()
c.display()
c=B()
c.display()