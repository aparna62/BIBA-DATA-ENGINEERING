import json
filepath='C:\\Users\\Aparna\\Desktop\\Hexaware Python\\JSON_File\\sample4.json'
with open(filepath) as file:
    json_content=file.read()
    data=json.loads(json_content)
    print(data['people'][0])
    for i in data['people1']:
        print("firstname:",i["firstName"])
        print("lastname:",i["lastName"])
        print("gender:",i["gender"])
        print("age",i["age"])
        print("number",i["number"])
        print()

    
    