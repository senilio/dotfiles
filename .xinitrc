xrdb ~/.Xresources
setxkbmap -layout se -model apple -variant mac
setxkbmap -option apple:badmap
setxkbmap -option ctrl:nocaps

# Set reasonable backlight level
echo 200 >/sys/class/backlight/intel_backlight/brightness

syncthing -no-browser -no-restart -logflags=0 &>/dev/null &

gpaste-client start
xrandr --output eDP1 --gamma 0.7:0.7:0.7
cd
exec bspwm
