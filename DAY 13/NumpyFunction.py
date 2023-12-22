import numpy as np
#return evenly spaced values in the given function
arr=np.arange(0,10,2)
arr=np.arange(10,20,5)
print(arr)
#return evenly spaced values in the given function
arr=np.linspace(1,5,6)
print(arr)
#reshaping the size of the array
arr=np.array([[4,5,6,2],
            [2,2,3,1],[2,3,4,1]])
newarr=arr.reshape(2,2,3)
print(newarr)
#for flatten array in row wise order
arr=np.array([[1,2],[3,4],[5,6]])
flatten_array=arr.flatten()
print(arr)
print(flatten_array)
#for flatten array in column  wise order
col_Arr=arr.ravel(order='F')
print(col_Arr)