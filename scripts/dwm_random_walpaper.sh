#!/bin/sh
WALLPAPER_DIR="$HOME/Pictures/wallpapers/"

get_random_image() {
    dirlength=$(ls | wc -l)
    if [ $dirlength -gt 0 ]; then
        random_image=$(ls $WALLPAPER_DIR | grep -E -i -o ".*\.jpg|.*\.jpeg|.*\.png" | shuf -n 1)
        echo $random_image

    elif [ $dirlength -eq 0 ]; then 
        exit
    fi
}

FILE=$1
cd $WALLPAPER_DIR
if [ -f "$FILE" ]; then
    filedata=$(file $FILE)
    if echo $filedata | grep -q -i "image"; then
        WALLPAPER=$FILE
        echo "Setting wallpaper to $FILE"
        feh --bg-fill $WALLPAPER
        sleep 1
        wal -i $WALLPAPER -n
        xrdb merge ~/.cache/wal/dwm.Xresources
    else
        echo "Given file not an image"
        exit
    fi
else
    WALLPAPER=$(get_random_image)

    if [ -z $WALLPAPER ]; then
        echo "No image found in given folder"
        exit
    else
        echo "Setting random wallpaper"
        feh --bg-fill $WALLPAPER
        sleep 1
        wal -i $WALLPAPER -n
        xrdb -merge ~/.cache/wal/dwm.Xresources
        xrdb -merge ~/.cache/wal/colors.Xresources
    fi
fi

killall dunst
killall dwmblocks
dwmblocks & 
/usr/bin/dunst & 
    
echo "The Current Wallpaper is: ${WALLPAPER}"


