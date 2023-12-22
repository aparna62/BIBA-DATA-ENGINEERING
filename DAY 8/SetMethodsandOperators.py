set1={2,3,4,1,6}
set2={3,4,2,8,9}
set3=set1.copy()
print(set3)
set3.add("A")
print(set3)
print(set1)
#copying the data and here it will create a new reference and it will effect the result also 
set4=set2 
print(set4)
print(set2)
set4.add("aparna")
print(set4)
print(set2)
set4.discard(9)
print(set4)
print(set2)
#pop -->remove random element from the set
set4.pop()
print(set4)
set4.pop()
print(set4)
print(set2)