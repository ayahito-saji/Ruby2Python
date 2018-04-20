import json

json_file_path = "json.txt"

# file load
with open(json_file_path, 'r') as fp:
    data = json.load(fp)

output = list(map(lambda x: x['title'], data))

print(json.dumps(output, ensure_ascii=False))