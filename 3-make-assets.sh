#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "It is time for you to take a coffee."
echo "It will take as long as it takes depending on cpu etc..."

echo "Making all assets"


SRC_DIR="src/Mint-Y"
cd $SRC_DIR

# fix for nonexistent "render-menubar-toolbar.sh" in mint-themes repo
cd gtk-2.0
./render-assets.sh
./render-dark-assets.sh
cp assets-dark/button.png                               menubar-toolbar/button.png
cp assets-dark/button-active.png                        menubar-toolbar/button-active.png
cp assets-dark/button-hover.png                         menubar-toolbar/button-hover.png
cp assets-dark/button-insensitive.png                   menubar-toolbar/button-insensitive.png
cp assets/menubar.png                                   menubar-toolbar/menubar.png
cp assets-dark/menubar.png                              menubar-toolbar/menubar-dark.png
cp assets/toolbar-entry-border-active-bg.png            menubar-toolbar/toolbar-entry-border-active-bg.png
cp assets-dark/toolbar-entry-border-active-bg.png       menubar-toolbar/toolbar-entry-border-active-bg-dark.png
cp assets/toolbar-entry-border-bg.png                   menubar-toolbar/toolbar-entry-border-bg.png
cp assets-dark/toolbar-entry-border-bg.png              menubar-toolbar/toolbar-entry-border-bg-dark.png
cp assets/toolbar-entry-border-disabled-bg.png          menubar-toolbar/toolbar-entry-border-disabled-bg.png
cp assets-dark/toolbar-entry-border-disabled-bg.png     menubar-toolbar/toolbar-entry-border-disabled-bg-dark.png
cd ..

# build themes
python build-themes.py


echo "All assets have been made."
echo "Svg's have been exported from the assets svg files"
echo "and converted to png's"
echo
echo "Run script number 4 to install the themes."
