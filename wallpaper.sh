#!/bin/bash
SEARCH="${1:-trees}"
URL="https://source.unsplash.com/1920x1080/?$SEARCH"
wget -O /tmp/wallpaper.jpg $URL
gsettings set org.gnome.desktop.background picture-uri file:///tmp/wallpaper.jpg
