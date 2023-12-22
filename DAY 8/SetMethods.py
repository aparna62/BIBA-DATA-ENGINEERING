set1={2,4,6,8,"python","program"}
set2={"web",5,7,9,"Site",None}
#isdisjoint means doesnot have single common element
print(set1.isdisjoint(set2))
set3={4,6}
#containing all elements returns true
print(set3.issubset(set1))
#if parenting set 
print(set1.issubset(set3))
print(set1.issuperset(set3))
print(set1.remove(2))
print(set1.remove("python"))
print(set1)