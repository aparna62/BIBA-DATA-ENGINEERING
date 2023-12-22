cars={1:"BMW",2:"range rover",3:"Tata",4:"Audi",5:"ford"}
#default print keys
for x in cars:
    print(x)#print(cars[x]) for values
#printing items
for x in cars.items():
    print(x)
#printing keys
for x in cars.keys():
    print(x)
#printing values
for x in cars.values():
    print(x)
#nested dictionaries
mydict={
    "child1":{"name":"stella","age":20},
    "child2":{"name":"appu","age":21},
    "child3":{"name":"sunny","age":21}
}
print(mydict)
print(mydict["child1"]["age"])
for x in mydict.values():
    print(x)
#methods of dictionary
mydict2={1:"jack",2:"tata"}
print(mydict2)
print(mydict2.pop(1))
print(mydict2)
mydict2.update({1:"jack"})
mydict2.popitem()
print(mydict2)


