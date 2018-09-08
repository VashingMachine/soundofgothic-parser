import os
import re
import json
scripts_dirs = ["scripts/gothic_1", "scripts/gothic_2"]
scripts_sets = [os.listdir(d) for d in scripts_dirs]
scripts_labels = ["1", "2"]
assigments = []

for i, scripts in enumerate(scripts_sets):
    print("parsing " + scripts_dirs[i])
    for script in scripts:
        with open(scripts_dirs[i] + "/" + script, 'r', encoding="Windows-1250") as file:
            for line in file:
                line = line.strip()
                if "AI_Output" in line and "//" != line.strip()[:2]:
                    sound_file = re.split(",|//", line)[2].strip()[1:-3]
                    sound_text = line.split("//")[1]
                    assigments.append({
                        "filename": sound_file,
                        "text": sound_text,
                        "g": scripts_labels[i],
                        "source": file.name.split("/")[-1][:-2]
                    })

with open("sound_text.json", "w", encoding="utf-8") as file:
    json.dump(assigments, file, ensure_ascii=False)
    print("success")


