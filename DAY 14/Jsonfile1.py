import json
filepath='C:\\Users\\Aparna\\Desktop\\Hexaware Python\\JSON_File\\sample1.json'
with open(filepath) as file:
    json_content = file.read()
    print(json_content) 
    data=json.loads(json_content)
    print("Type:",type(data))
    print(data)