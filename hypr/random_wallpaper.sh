#!/usr/bin/env zsh
sleep 2
WALLPAPER_DIR="$HOME/Pictures/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
echo "The Current Wallpaper is: ${WALLPAPER}"
wal -i $WALLPAPER -n
killall waybar
~/scripts/waybar_launch.sh &
