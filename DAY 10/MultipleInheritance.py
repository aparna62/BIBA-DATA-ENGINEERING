class A:
    def display1(self):
        print("I am parent1")
class B:
    def display2(self):
        print("I am parent2")
class C(A,B):
    def display1(self):
        return super().display1()
    def display2(self):
        return super().display2()
    def display3(self):
        print("I am child class")
c=C()
c.display1()
c.display2()
c.display3()
