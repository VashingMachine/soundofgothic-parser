import os
import re
import json

source_folder = '../PrjGothic/Story/NPC'
names_path = '../PrjGothic/Story/Text.d'
output_json = 'npc.json'


def read_names():
    with open(names_path, 'r') as src:
        lines = src.readlines()

    def line(pattern):
        return next(filter(lambda l: re.search(pattern, l) and l.strip().endswith(';'), lines))

    names = {}

    for l in lines:
        if re.search("const string NAME", l):
            left, right = l.split('=')
            name = left.strip().split(' ')[-1]
            value = right.replace('"', '').replace(';', '').strip()
            names[name] = value

    return names


def guilds():
    return [
        "(brak)",
        "Magnat",
        "Strażnik",
        "Cień",
        "Mag Ognia",
        "Kopacz",
        "Mag Wody",
        "Najemnik",
        "Szkodnik",
        "Zbieracz",
        "Kret",
        "Guru",
        "Nowicjusz",
        "Strażnik Świątynny",
        "Nekromanta",
        "Babka",
        "",
        "Jaszczur",
        "Śniący",
        "Goblin",
        "Troll",
        "Zębacz",
        "Pełzacz",
        "Chrząszcz",
        "Ścierwojad",
        "Demon",
        "Wilk",
        "Cieniostwór",
        "Krwiopijca",
        "Wąż błotny",
        "Zombi",
        "Ork-Zombi",
        "Szkielet",
        "Orkowy pies",
        "Kretoszczur",
        "Golem",
        "Topielec",
        "",
        "Ork-Szaman",
        "Ork-Wojownik",
        "Ork-Zwiadowca",
        "Ork-Niewolnik"
    ]


def guild_constants():
    return {
        "GIL_None": 0,
        "GIL_HUMAN": 1,
        "GIL_EBR": 1,
        "GIL_GRD": 2,
        "GIL_STT": 3,
        "GIL_KDF": 4,
        "GIL_VLK": 5,
        "GIL_KDW": 6,
        "GIL_SLD": 7,
        "GIL_ORG": 8,
        "GIL_BAU": 9,
        "GIL_SFB": 10,
        "GIL_GUR": 11,
        "GIL_NOV": 12,
        "GIL_TPL": 13,
        "GIL_DMB": 14,
        "GIL_BAB": 15,
        "GIL_SEPERATOR_HUM": 16,
        "MAX_GUILDS": 16,
        "GIL_WARAN": 17,
        "GIL_SLF": 18,
        "GIL_GOBBO": 19,
        "GIL_TROLL": 20,
        "GIL_SNAPPER": 21,
        "GIL_MINECRAWLER": 22,
        "GIL_MEATBUG": 23,
        "GIL_SCAVENGER": 24,
        "GIL_DEMON": 25,
        "GIL_WOLF": 26,
        "GIL_SHADOWBEAST": 27,
        "GIL_BLOODFLY": 28,
        "GIL_SWAMPSHARK": 29,
        "GIL_ZOMBIE": 30,
        "GIL_UNDEADORC": 31,
        "GIL_SKELETON": 32,
        "GIL_ORCDOG": 33,
        "GIL_MOLERAT": 34,
        "GIL_GOLEM": 35,
        "GIL_LURKER": 36,
        "GIL_SEPERATOR_ORC": 37,
        "GIL_ORCSHAMAN": 38,
        "GIL_ORCWARRIOR": 39,
        "GIL_ORCSCOUT": 40,
        "GIL_ORCSLAVE": 41,
        "GIL_MAX": 42
    }


def process_npc_file(file):
    # print(file)
    with open(file, 'r') as src:
        lines = src.readlines()

    def line(pattern):
        return next(filter(lambda l: re.search(pattern, l) and l.strip().endswith(';'), lines))

    def attribute(header):
        try:
            return line(header).split('=')[1].replace(';', '').strip()
        except StopIteration:
            return None

    def talent_skill(talent):
        try:
            skill_line = line(talent)
            start_pos = skill_line.find(talent)
            value = re.search(r",( )*\d+", skill_line[start_pos:]).group(0).replace(',', '')
            return value
        except StopIteration:
            return None

    def name():
        pre_name = attribute(r'name\[0\]')

    npc = {
        'STR': attribute(r'ATR_STRENGTH'),
        'DEX': attribute(r'ATR_DEXTERITY'),
        'MANA': attribute(r'ATR_MANA_MAX'),
        'HP': attribute(r'ATR_HITPOINTS_MAX'),
        'voice_id': attribute(r'voice'),
        'id': attribute(r'id( )*='),
        'guild_short': attribute(r'guild( )*='),
        'lvl': attribute(r'level'),
        'name': attribute(r'name').replace('"', ''),
        '1H': talent_skill(r'NPC_TALENT_1H'),
        '2H': talent_skill(r'NPC_TALENT_2H'),
        'CROSSBOW': talent_skill(r'NPC_TALENT_CROSSBOW'),
        'BOW': talent_skill(r'NPC_TALENT_BOW'),
        'MAGIC': talent_skill(r'NPC_TALENT_MAGE'),
        'SNEAK': talent_skill(r'NPC_TALENT_SNEAK')
    }

    nulls = list(map(lambda key: key, filter(lambda key: npc[key] is None, npc)))
    for null in nulls:
        del npc[null]
    return npc


def main():
    files = list(filter(lambda f: f.endswith('.d'), os.listdir(source_folder)))
    npcs = {}
    for file in files:
        npc = process_npc_file(os.path.join(source_folder, file))
        npcs[int(npc['id'])] = npc
    names = read_names()
    for npc in npcs:
        if npcs[npc]['name'] in names.keys():
            npcs[npc]['name'] = names[npcs[npc]['name']]
        if 'guild_short' not in npcs[npc]:
            npcs[npc]['guild_short'] = 'GIL_TPL'
        guild_short = npcs[npc]['guild_short']
        npcs[npc]['guild'] = guilds()[guild_constants()[guild_short]]
        npcs[npc]['guild_id'] = guild_constants()[guild_short]
    with open(output_json, 'wb') as output:
        output.write(json.dumps(npcs, ensure_ascii=False).encode('utf8'))


if __name__ == "__main__":
    main()
