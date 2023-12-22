import pandas as pd
s1=pd.Series([1,2,3],index=['a','b','c'])
s2=pd.Series([2,3,4],index=['a','c','d'])
res=s1+s2
print(res)