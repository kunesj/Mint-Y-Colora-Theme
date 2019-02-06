#!/bin/bash
#
# Prepare light and dark color in hexadecimal format (6 letters or numbers).
# - Never put a hashtag # in front of the colour code if copy/pasting from gpick
# - Never put "FF" at the end if copy/pasting from inkscape
# Use color values as scrpt arguments in format "1-change-color.sh LIGHT_COLOR DARK_COLOR"
# - example: ./1-change-color.sh 9ab87c 8fa876
#

# path to Mint-Y source
SRC_DIR="src/Mint-Y"

# get new colors
personallightcolour=$1
personaldarkcolour=$2
if [ $# -ne 2 ]; then
    echo "ERROR! Missing (or incorect number of) color values! Using default colors!"
    # these are orginal colors
    personallightcolour=9ab87c
    personaldarkcolour=8fa876
fi


echo "All css files but also svg files will be affected"
echo "PNG'S will not be altered with this script"
echo "Changing ....."


#original light version is #9ab87c
oldcolour1=9ab87c
#original dark version is #8fa876
oldcolour2=8fa876
#other colour variations in svg
oldcolour3=779559
oldcolour4=9abe76
oldcolour5=9ab87d
oldcolour6=88a66a
oldcolour7=81a65b
# other colours that were missed
oldcolour8=8ba670


newcolour1=$personallightcolour
newcolour2=$personaldarkcolour

newcolour3=$personaldarkcolour
newcolour4=$personallightcolour
newcolour5=$personallightcolour
newcolour6=$personallightcolour
newcolour7=$personaldarkcolour

newcolour8=$personaldarkcolour

find $SRC_DIR -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour2'/'$newcolour2'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour3'/'$newcolour3'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour4'/'$newcolour4'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour5'/'$newcolour5'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour6'/'$newcolour6'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour7'/'$newcolour7'/g' {}  \;
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour8'/'$newcolour8'/g' {}  \;


#Rubberband Solution for now

#border
oldcolour1=76905b
find $SRC_DIR -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;

#background of rubberband is in rgba
#from hex to decimal
redhex=${newcolour1:0:2}
greenhex=${newcolour1:2:2}
bluehex=${newcolour1:4:2}

reddec=$((16#$redhex))
greendec=$((16#$greenhex))
bluedec=$((16#$bluehex))

rgbacolour="$reddec, $greendec, $bluedec"

#old rgba colour of background rubberband
oldcolour1="118, 144, 91"
newcolour1=$rgbacolour

#gtk-dark rubberband
find $SRC_DIR -type f -exec sed -i "s/$oldcolour1/$newcolour1/g" {}  \;

#gtk + gtk-darker rubberband
oldcolour1="129, 166, 91"
find $SRC_DIR -type f -exec sed -i "s/$oldcolour1/$newcolour1/g" {}  \;


echo "Finished! Next, delete all assets i.e. png's with script number 2"
