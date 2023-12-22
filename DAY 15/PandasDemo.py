import pandas as pd
# Creating a DataFrame from a dictionary
data = {'Name': ['Aparna', 'Kishore', 'Charan'],
        'Age': [10, 20, 30],
        }
df = pd.DataFrame(data)
print(df)