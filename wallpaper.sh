#!/bin/bash
URL="https://source.unsplash.com/1920x1080/?nature,wildlife"
wget -O /tmp/wallpaper.jpg $URL
gsettings set org.gnome.desktop.background picture-uri file:///tmp/wallpaper.jpg
