import numpy as np
#creating array with zeroes
arr=np.zeros((2,2))
print(arr)
#creating array with ones
arr=np.ones((2,2))
print(arr)
#creating with out own values
arr=np.full((2,3),6,dtype='complex')
print(arr)
#printing each array with value 6
arr=np.full((2,2),6,dtype='int')
print(arr)
#printing random
arr=np.random.random((2,2))
print(arr)