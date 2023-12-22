class Base:
    def __init__(self):
        self.a = "HexaforHexa"
        self.c = "HexaforHexa"
    
    def __str__(self):
        return self.c
 
class Derived(Base):
    def __init__(self):
 
        Base.__init__(self)
        print("Calling private member of base class: ")
        print(self.c)
 
obj1 = Base()
print(obj1)