#!/bin/bash
SEARCH="${1:-trees}"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd $SCRIPT_DIR
. env/bin/activate
. secrets.sh
URL=$(python3 wallpaper.py $SEARCH)
TIMESTAMP=$(date +%s)
FNAME="$TIMESTAMP.jpg"
mkdir -p wallpapers
wget -O "./wallpapers/${FNAME}" $URL
gsettings set org.gnome.desktop.background picture-uri "file://$SCRIPT_DIR/wallpapers/${FNAME}"
popd



