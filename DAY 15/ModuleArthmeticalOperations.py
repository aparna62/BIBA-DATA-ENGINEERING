import calculator as calc #Renaming the importing the module
a=int(input("enter a value "))
b=int(input("enter b value "))

print("Performing the addition operation")
print("Addition of a and b ",calc.add(a,b))

print("Performing the subtraction operation")
print("Subtraction of a and b ",calc.sub(a,b))

print("Performing the multiplication operation")
print("Multiplication of a and b ",calc.mul(a,b))

print("Performing the division operation")
print("Division of a and b ",calc.div(a,b))

print("Performing the Floor Division operation")
print("Division of a and b ",calc.floordiv(a,b))
