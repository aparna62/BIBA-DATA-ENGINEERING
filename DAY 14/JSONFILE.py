import json
json_String='{"id":101,"name":"aparna","age":20}'
data=json.loads(json_String)
print(data)
print(data['name'])
print(data['age'])