import os
import re
import json

source_folder = '../PrjGothic/Story/MISSIONS'

def process_mission(path):
    pass

def main():
    files = list(filter(lambda f: f.endswith('.d'), os.listdir(source_folder)))
    npcs = {}
    for file in files:
        npc = process_mission(os.path.join(source_folder, file))
        npcs[int(npc['id'])] = npc
    with open(output_json, 'wb') as output:
        output.write(json.dumps(npcs, ensure_ascii=False).encode('utf8'))


if __name__ == "__main__":
    main()
