#!/bin/sh
WALLPAPER_DIR="$HOME/Pictures/wallpapers/"

FILE=$1
cd $WALLPAPER_DIR
if [ -f "$FILE" ]; then
    WALLPAPER=$FILE
    echo "Setting wallpaper to $FILE"
    feh --bg-fill $WALLPAPER
    sleep 1
    wal -i $WALLPAPER -n
    xrdb merge ~/.cache/wal/dwm.Xresources
else
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
    echo "Setting random wallpaper"
    feh --bg-fill $WALLPAPER
    sleep 1
    wal -i $WALLPAPER -n
    xrdb merge ~/.cache/wal/dwm.Xresources
fi

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"
pidof dunst && killall dunst

/usr/bin/dunst & #> /dev/null 2>&1 &
    

echo "The Current Wallpaper is: ${WALLPAPER}"


