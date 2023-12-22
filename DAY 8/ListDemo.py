list1=['stella',20,'kiran',200.9]
print(list1)
#list methods
list1.append("kishore") #used to add values at end
list1.insert(2,400) #used to insert values at specified position
list2=[20,30]
list1.extend(list2)#adding values from another list
list1[3]="Ramya"#changing values at particular position
del list1[1] #removing values at particular position
#Iterating over list
for i in list1:
    print(i)
print(list1)
#list slicing
print(list1[-1])
print(list1[1:3])
print(list1[:])
