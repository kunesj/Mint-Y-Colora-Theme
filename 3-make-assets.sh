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
python build-themes.py

# fix for nonexistent "render-menubar-toolbar.sh" in mint-themes repo
cp $SRC_DIR/gtk-2.0/assets-dark/button.png                                  $SRC_DIR/gtk-2.0/menubar-toolbar/button.png
cp $SRC_DIR/gtk-2.0/assets-dark/button-active.png                           $SRC_DIR/gtk-2.0/menubar-toolbar/button-active.png
cp $SRC_DIR/gtk-2.0/assets-dark/button-hover.png                            $SRC_DIR/gtk-2.0/menubar-toolbar/button-hover.png
cp $SRC_DIR/gtk-2.0/assets-dark/button-insensitive.png                      $SRC_DIR/gtk-2.0/menubar-toolbar/button-insensitive.png
cp $SRC_DIR/gtk-2.0/assets/menubar.png                                      $SRC_DIR/gtk-2.0/menubar-toolbar/menubar.png
cp $SRC_DIR/gtk-2.0/assets-dark/menubar.png                                 $SRC_DIR/gtk-2.0/menubar-toolbar/menubar-dark.png
cp $SRC_DIR/gtk-2.0/assets/toolbar-entry-border-active-bg.png               $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-active-bg.png
cp $SRC_DIR/gtk-2.0/assets-dark/toolbar-entry-border-active-bg.png          $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-active-bg-dark.png
cp $SRC_DIR/gtk-2.0/assets/menubar-toolbar/toolbar-entry-border-bg.png      $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-bg.png
cp $SRC_DIR/gtk-2.0/assets-dark/menubar-toolbar/toolbar-entry-border-bg.png $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-bg-dark.png
cp $SRC_DIR/gtk-2.0/assets/toolbar-entry-border-disabled-bg.png             $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-disabled-bg.png
cp $SRC_DIR/gtk-2.0/assets-dark/toolbar-entry-border-disabled-bg.png        $SRC_DIR/gtk-2.0/menubar-toolbar/toolbar-entry-border-disabled-bg-dark.png


echo "All assets have been made."
echo "Svg's have been exported from the assets svg files"
echo "and converted to png's"
echo
echo "Run script number 4 to install the themes."
