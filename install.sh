!# /bin/bash

echo ">installing core deps"
# write down all the needed scripts
# installing core dependencies 
# terminiator, neofetch, vim, make, fish, i3, rofi, polybar, nitrogen, picom, dunst
sudo pacman -Syu teriminator neofetch vim make fish i3 rofi polybar nitrogen picom dunst

echo ">linking --classic snap"
# link snap --classic lib
sudo ln -s /var/lib/snapd/snap /snap

echo ">installing development deps"
# install snap development deps 
sudo snap install node --classic
sudo snap install code --classic
sudo snap install gitkraken --classic
sudo snap install android-studio --classic
sudo snap install flutter --classic
sudo snap install robo3t-snap
sudo snap install insomnia
sudo snap install docker
sudo snap install openjdk
		
echo ">installing utils"
# install snap utils 
# install utils
sudo snap install spotify
sudo snap install vlc
sudo snap install easy-disk-cleaner
sudo snap install youtube-dl
sudo snap install nmap

echo ">copying config files"
# copy config files to .config
copy_dir=$HOME/.config
search_dir=$(pwd)
for entry in "$search_dir"/config/*
do
  cp $entry -r $copy_dir
  echo "copied -> $entry"
done

echo ">copying images files"
copy_dir=$HOME/Pictures
search_dir=$(pwd)
for entry in "$search_dir"/images/*
do
  cp $entry -r $copy_dir
  echo "copied -> $entry"
done

echo ">copying builds"
copy_dir=$HOME/builds
search_dir=$(pwd)
for entry in "$search_dir"/builds/*
do
  cp $entry -r $copy_dir
  echo "copied -> $entry"
done

echo ">coping fonts"
copy_dir=$HOME/.local/share/fonts
search_dir=$(pwd)
for entry in "$search_dir"/fonts/*
do
  cp $entry -r $copy_dir
  echo "copied -> $entry"
done
