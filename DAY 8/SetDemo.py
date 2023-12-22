myset={2,4,3,2,"python","hexaware","SQL",40.9,'A'}
print(set)
list1=[2,4,3,1,6,3,21,4,7]
converttoSet=set(list1) #converting list to set
print(converttoSet)
# cannot modify the set through indexing coz it doesnot have order  -->myset[2]="c"
myset.add("Data Science")
myset.add("Technology")
print(myset)
#creating the frozen set
frozen_set=frozenset(['a','b','c','z','e'])
print(frozen_set)
myset2={100,200,400,900,300}
myset3={20,40,60,80,10}
#union operation between sets
print(myset.union(myset2))
print(myset|myset3|myset)
#perfoming the intersection operation
result_set=myset2.intersection(myset3).intersection(myset)
print(result_set)
#perfoming the difference operation 
set3={1,2,3,5}
set4={1,3,2,4}
print(set3.difference(set4))
#it deletes all data present in set
set3.clear()
print(set3)