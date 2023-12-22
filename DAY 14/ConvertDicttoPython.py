import json
dict={
    "id":1,
    "name":"kishore",
    "role":"Data Science"
}
json_obj=json.dumps(dict,indent=4)#The indent parameter is used to specify the number of spaces to use for indentation when representing the JSON object as a string. This parameter is optional.
print(json_obj)