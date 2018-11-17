#!/bin/bash

# path to Mint-Y source
SRC_DIR="src/Mint-Y"

echo "Deleting all assets i.e. png in the src folder..."

rm -f $SRC_DIR/gtk-2.0/assets/*.png
rm -f $SRC_DIR/gtk-2.0/assets-dark/*.png
rm -f $SRC_DIR/gtk-2.0/menubar-toolbar/*.png

rm -f $SRC_DIR/gtk-3.0/assets/*.png

echo "Finished! Next, run script number 3 to make new assets."
