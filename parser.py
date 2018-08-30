import os
import re
import json
scripts_dir = "scripts"
scripts = os.listdir(scripts_dir)
assigments = []

for script in scripts:
    with open(scripts_dir + "/" + script, 'r', encoding="Windows-1250") as file:
        for line in file:
            line = line.strip()
            if "AI_Output" in line and "//" != line.strip()[:2]:
                sound_file = re.split(",|//", line)[2].strip()[1:-3]
                sound_text = line.split("//")[1]
                assigments.append({
                    "filename": sound_file,
                    "text": sound_text
                })

with open("sound_text.json", "w", encoding="utf-8") as file:
    json.dump(assigments, file, ensure_ascii=False)


