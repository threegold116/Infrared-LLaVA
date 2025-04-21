import json

data_json_path = "/home/sxjiang/myproject/infrared/g0002/infrared_json/syentic_json/syentic_instructiontune.json"
output_json_path = "/home/sxjiang/myproject/infrared/g0002/infrared_json/syentic_json/syentic_instructiontune_upload.json"
with open(data_json_path, "r") as f:
    data = json.load(f)

print(len(data))
new_data = []
for item in data:
    new_item = {
        "thermal": item["thermal"].split("/")[-1],
        "conversations": item["conversations"]
    }
    new_data.append(new_item)
with open(output_json_path, "w") as f:
    json.dump(new_data, f, indent=4)