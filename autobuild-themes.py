#!/usr/bin/python3
# coding: utf-8

import sys, os

##########################
# FEEL FREE TO EDIT THIS #
##########################
THEMES = {
    'Smoke': {'light': 'A1A1A1', 'dark': 'A1A1A1'},
    'Majestic': {'light': '5F5F5F', 'dark': '5F5F5F'},
    'Numix': {'light': 'd64937', 'dark': 'd64937'},
    'Numix-Orange': {'light': 'FFA726', 'dark': 'FFA726'},
}

####################
# DO NOT EDIT THIS #
####################
REPLACE_START = '# !!!COLOR_REPLACE_START!!!'
REPLACE_END = '# !!!COLOR_REPLACE_END!!!\n'
REPLACE_STRING = '''{}
personallightcolour={}
personaldarkcolour={}
{}'''

# change working directory to directory of this file
os.chdir(os.path.dirname(os.path.abspath(__file__)))

for tname in THEMES:
    print('Processing theme: {}'.format(tname))
    
    # Replace colors in script
    with open('1-change-color.sh', 'r') as f:
        data = f.read()
    header = data.split(REPLACE_START)[0]
    footer = data.split(REPLACE_END)[-1]
    
    new_colors = REPLACE_STRING.format(
        REPLACE_START,
        THEMES[tname]['light'], 
        THEMES[tname]['dark'],
        REPLACE_END
    )
    with open('1-change-color-updated.sh', 'w') as f:
        f.write(header + new_colors + footer)
    os.system('chmod +x 1-change-color-updated.sh')

    # Build theme
    os.system('git checkout -- src && rm -rf usr')
    os.system('./1-change-color-updated.sh')
    os.system('./2-delete-assets.sh')
    os.system('./3-make-assets.sh')
    os.system('./4-moving-the-themes.sh {}'.format(tname))



