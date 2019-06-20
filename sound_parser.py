import os
import re
import json

sound_dirs = ['sounds/g1', 'sounds/g2']
labels = ['g1', 'g2']
filename_sets = [os.listdir(d) for d in sound_dirs]
assigments = []

for i, filenames in enumerate(filename_sets):
    print("parsing Gothic " + str(i+1))
    for filename in filenames:
        assigments.append({
            "filename": filename,
            "tags": [],
            "description": "",
            "g": i
        })

with open("sfx.json", "w", encoding="utf-8") as file:
    json.dump(assigments, file, ensure_ascii=False)
