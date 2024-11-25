# This is a simple status bar for DWM
while true; do
  # Get the date and time
  DATE_TIME=$(date +"%Y-%m-%d %H:%M")
  # CPU_TEMP=$(sysctl -a | grep -i temperature)
  GET_TOTAL_RAM=$(sysctl -n hw.physmem)
  TOTAL_RAM=$(($GET_TOTAL_RAM / 1024000000))

  xsetroot -name "RAM: $TOTAL_RAM | $DATE_TIME"
  sleep 1
done &
# Show wallpaper 
nitrogen --restore &

xrandr --output eDP-1 --off --output HDMI-1 --auto
# run DWM after type "startx" in tty0
exec dwm

