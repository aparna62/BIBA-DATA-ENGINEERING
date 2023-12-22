fruits={1:"Apple",3:"Banana",2:"Kiwi",4:"Orange",6:"PineApple"}
print(fruits)
print(fruits[4]) #printing value for each value from key
print(fruits.keys())  #printing all keys 
print(fruits.values()) #printing all values 
fruits[3]="Grapes"
print(fruits.pop(1))
print(fruits)
print(fruits.popitem()) #recent item will deleted
print(fruits)
del fruits[3] #remove item based on keys
print(fruits.items()) #display like  tuples
#clear()-clear everything in dic
