#!/bin/bash
#
# Usage:
#   ./4-moving-the-themes.sh THEME_NAME
#   OR
#   ./4-moving-the-themes.sh THEME_NAME THEME_FOLDER

choice=$1
if [ $# -eq 0 ]; then
    echo "Let us rename the folders so they are unique :"
    echo "Your name will be added after 'Mint-Y', 'Mint-Y-Dark' or 'Mint-Y-Darker'."
    echo "For example if you type Sun you will get"
    echo "E.g. Mint-Y-Sun, Mint-Y-Darker-Sun, Mint-Y-Dark-Sun"

    read -p "How should we name this new theme? First letter is a capital letter (no space but '-') : " choice

    echo "Renaming the folders"
fi

target=$2
if [ $# -eq 1 ]; then
    target=$HOME"/.themes"
fi


# if there is no themes folder then make one
[ -d $target ] || mkdir -p $target

# remove old version of this theme
cp -rf usr/share/themes/Mint-Y* $target

# copy theme to destination
mv $target"/Mint-Y" $target"/Mint-Y-"$choice
mv $target"/Mint-Y-Dark" $target"/Mint-Y-Dark-"$choice
mv $target"/Mint-Y-Darker" $target"/Mint-Y-Darker-"$choice

# update theme names in index.theme
echo "################################################################"
echo "Renaming the content of the index.theme"
echo "Mint-Y-Darker-$choice"
find $target"/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y-Darker'/'Name=Mint-Y-Darker-$choice'/g' {}  \;
find $target"/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y-Darker'/'GtkTheme=Mint-Y-Darker-$choice'/g' {}  \;
find $target"/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y-Dark'/'MetacityTheme=Mint-Y-Darker-$choice'/g' {}  \;
echo "################################################################"
echo "Renaming inside the index.theme"
echo "Mint-Y-Dark-$choice"
find $target"/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y-Dark'/'Name=Mint-Y-Dark-$choice'/g' {}  \;
find $target"/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y-Dark'/'GtkTheme=Mint-Y-Dark-$choice'/g' {}  \;
find $target"/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y-Dark'/'MetacityTheme=Mint-Y-Dark-$choice'/g' {}  \;
echo "################################################################"
echo "Renaming inside the index.theme"
echo "Mint-Y-$choice"
find $target"/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y'/'Name=Mint-Y-$choice'/g' {}  \;
find $target"/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y'/'GtkTheme=Mint-Y-$choice'/g' {}  \;
find $target"/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y'/'MetacityTheme=Mint-Y-$choice'/g' {}  \;


echo "The themes have been renamed and moved to folder: "$target
echo "If you made a mistake, delete the folders in .themes and run the script again."
echo "Select theme with your theme manager and enjoy!"


