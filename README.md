# Mint-Y-Colora Theme

### The goal is to make a script that makes it easy to change the colours of the Mint-Y (and hopefully soon Mint-X) theme of Linux Mint.
 We start from the source files at https://github.com/linuxmint/mint-themes and let loose a few scripts to change the colour accent.

Note: This repository is a fork from Erik Dubois' project, which doesn't work with latest Mint and Mint-Y theme.


# Just want to download the themes not build them

All created themes can be found at:

    https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection (outdated)
    https://github.com/kunesj/Mint-Y-Colora-Theme-Personal-Collection (only few themes)

Follow the steps in the README.



# Installation

Script can run on a variety of Linux distro's, but are made for Debian based ones.

If you are on a different kind of distro, you will need to change package manager in `0-install-tools.sh`.

#### 1. Get the source

First, install git:

	sudo apt-get install git

Get the latest version of the Linux Mint themes and Mint-Y-Colora with:

    git clone https://github.com/linuxmint/mint-themes.git
    git clone https://github.com/kunesj/Mint-Y-Colora-Theme.git

Copy scripts into downloaded mint-themes:

    cp Mint-Y-Colora-Theme/*.sh mint-themes/
    cp Mint-Y-Colora-Theme/*.py mint-themes/

Go inside mint-themes folder and install required tools with:

    cd mint-themes/
    ./0-install-tools.sh

#### 2. Define name and color of new theme(s)

Find yourself a nice colour with gpick or online. It should be a hexadecimal notation but without the hashtag `#`. Theme name must not have any spaces and will be appended to Mint-Y. example:
```
Sun     -> Mint-Y-Sun, Mint-Y-Darker-Sun, Mint-Y-Dark-Sun
Sun-Alt -> Mint-Y-Sun-Alt, Mint-Y-Darker-Sun-Alt, Mint-Y-Dark-Sun-Alt
```

Open `autobuild-themes.py` and add line(s) inside `THEMES` dictionary variable. example:
```
THEMES = {
    'Numix': {'light': 'd64937', 'dark': 'd64937'},
}
```

#### 3. Build theme(s)

Build all themes defined in `THEMES` dictionary variable:
```
./autobuild-themes.py
```
Created themes will be put into `~/.themes` directory.

After the installation is complete you can activate the theme with your theme manager by selecting `Mint-Y-Sun`, `Mint-Y-Darker-Sun` or `Mint-Y-Dark-Sun` as Window/GTK+ theme. If you named the theme `Sun`. That is just an example.


# Uninstall the theme manually

Themes are put into hidden folder `~/.themes` in your home directory. Just remove theme folders of any theme you want to uninstall.

If you cant find theme you want to uninstall in this folder, it could be installed in other theme folders on your computer:
```
/usr/share/themes/
/usr/local/share/themes/
~/.local/share/themes/
~/.themes/
```


# F  A  Q


#### I want icons on the toolbar to be white like on the pictures!

Go to the cinnamon folder and change the cinnnamon.css file to this code around line 455.

    .system-status-icon {
    icon-size: 16px;
    padding: 0 1px;
    color: white; }

and line 1327 to this code

    .applet-label {
    font-weight: bold;
    color: rgba(255, 255, 255, 1); }


#### What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

    ls -al

Above code will reveal if a script has an "x". X meaning executable.

For now if this happens, you should apply this code in the terminal and add the file name.

    chmod +x typeyourfilename

Then you can execute it by typing

    ./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


#### What is the default look of Mint-Y theme

Original Mint-Y theme colors are `9ab87c` and `8fa876`.

This is the original Mint-Y-Dark theme with all the little green accents.


![Screenshots](http://i.imgur.com/RFfsxm6.jpg)


![Screenshots](http://i.imgur.com/LcMjMBG.png)



# Mint-Y-Colora themes on Linux Mint 18.2



# Mint-Y-Alu

## Mint-Y-Dark-Alu

![Screenshots](http://i.imgur.com/rRgxvgE.jpg)

## Mint-Y-Alu

![Screenshots](http://i.imgur.com/vpWBaol.jpg)

## Mint-Y-Darker-Alu

![Screenshots](http://i.imgur.com/Whth7bW.png)



# Mint-Y-Arc

## Mint-Y-Dark-Arc

![Screenshots](http://i.imgur.com/xStA6XS.jpg)

## Mint-Y-Arc

![Screenshots](http://i.imgur.com/6ii1UrF.jpg)

## Mint-Y-Darker-Arc

![Screenshots](http://i.imgur.com/tRFkqVO.jpg)



# Mint-Y-Arch

## Mint-Y-Dark-Arch

![Screenshots](http://i.imgur.com/gPcjb5e.jpg)

## Mint-Y-Arch

![Screenshots](http://i.imgur.com/IelYXod.jpg)

## Mint-Y-Darker-Arch

![Screenshots](http://i.imgur.com/o1XnG0M.png)



# Mint-Y-Crimson

## Mint-Y-Dark-Crimson

![Screenshots](http://i.imgur.com/NCvY4C7.jpg)




# Mint-Y-Evopop

## Mint-Y-Dark-Evopop

![Screenshots](http://i.imgur.com/f00lMXN.jpg)




# Mint-Y-Faba

## Mint-Y-Dark-Faba

![Screenshots](http://i.imgur.com/lQs3os3.jpg)



# Mint-Y-Fire

## Mint-Y-Dark-Fire

![Screenshots](http://i.imgur.com/iDTAVCp.jpg)

## Mint-Y-Fire

![Screenshots](http://i.imgur.com/S7rxV2Q.png)

## Mint-Y-Darker-Fire

![Screenshots](http://i.imgur.com/5PuBay9.png)



# Mint-Y-Havelock

## Mint-Y-Dark-Havelock

![Screenshots](http://i.imgur.com/TOYWMRB.jpg)



# Mint-Y-Hibiscus

## Mint-Y-Dark-Hibiscus

![Screenshots](http://i.imgur.com/31PANoq.jpg)




# Mint-Y-Lightning

## Mint-Y-Dark-Lightning

![Screenshots](http://i.imgur.com/iknj8bS.jpg)

## Mint-Y-Lightning

![Screenshots](http://i.imgur.com/XQDzq97.jpg)

## Mint-Y-Darker-Lightning

![Screenshots](http://i.imgur.com/nZzpm2Q.jpg)



# Mint-Y-Moka

## Mint-Y-Dark-MOka

![Screenshots](http://i.imgur.com/UgRHgxo.jpg)




# Mint-Y-Matrix

## Mint-Y-Dark-Matrix

![Screenshots](http://i.imgur.com/I2V1JzQ.jpg)




# Mint-Y-Oranchelo

## Mint-Y-Dark-Oranchelo

![Screenshots](http://i.imgur.com/lOtWOha.jpg)




# Mint-Y-Paper

## Mint-Y-Dark-Paper

![Screenshots](http://i.imgur.com/0sUmwY7.jpg)



# Mint-Y-Polo

## Mint-Y-Dark-Polo

![Screenshots](http://i.imgur.com/fHOkfbJ.jpg)




# Mint-Y-Sidecar

Started with Sardi Ghost Flexible script to change the colour, then conky aureola and mint-y theme.

## Mint-Y-Dark-Sidecar

![Screenshots](http://i.imgur.com/MELNDGc.jpg)




# Mint-Y-Sun

## Mint-Y-Dark-Sun

![Screenshots](http://i.imgur.com/xi11Z70.jpg)

## Mint-Y-Sun

![Screenshots](http://i.imgur.com/JeKQ9fZ.png)

## Mint-Y-Darker-Sun

![Screenshots](http://i.imgur.com/1tHgHXi.jpg)




# Mint-Y-Watusi

## Mint-Y-Dark-Watusi

![Screenshots](http://i.imgur.com/nZsWOAQ.jpg)


