import json
filepath='C:\\Users\\Aparna\\Desktop\\Hexaware Python\\JSON_File\\sample1.json'
file=open(filepath)
json_content=file.read()
data=json.loads(json_content)
print(data)
for i in data:
    print(i)
file.close()
