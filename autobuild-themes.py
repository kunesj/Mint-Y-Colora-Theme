#!/usr/bin/python3
# coding: utf-8

import sys, os
import json

# load theme definitions
THEMES = {}
with open("themes.json", "r") as f:
    THEMES = json.loads(f.read())

# get installation destination
TARGET = "" if (len(sys.argv) == 1) else sys.argv[1]

# change working directory to directory of this file
os.chdir(os.path.dirname(os.path.abspath(__file__)))

for tname in THEMES:
    print('Processing theme: {}'.format(tname))

    if (THEMES[tname]['light'] is None) or (THEMES[tname]['dark'] is None):
        print("Theme has empty/bad definition, skipping!")
        continue

    os.system('git checkout -- src && rm -rf usr')
    os.system('./1-change-color.sh {} {}'.format(THEMES[tname]['light'], THEMES[tname]['dark']))
    os.system('./2-delete-assets.sh')
    os.system('./3-make-assets.sh')
    if TARGET == "":
        os.system('./4-moving-the-themes.sh {}'.format(tname))
    else:
        os.system('./4-moving-the-themes.sh {} "{}"'.format(tname, TARGET))


