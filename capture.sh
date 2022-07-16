# Capture it, then move to www to help avoid serving a partial image
/usr/local/bin/libcamera-still --autofocus -n -o /home/pi/projects/ti-live/live.png 

# Capture a timestamped image for timelapse
currenttimestamp=$(date +"%Y%m%d%H%M%S")
currentdate=$(date +"%Y%m%d")
savedir="/home/pi/projects/ti-live/timelapse/${currentdate}"

# Make the directory unless it exists
[ -d "${savedir}" ] || mkdir -p ${savedir}

convert /home/pi/projects/ti-live/live.png -resize 1920x1080 ${savedir}/snap-${currenttimestamp}.png

mv /home/pi/projects/ti-live/live.png /home/pi/projects/ti-live/www/live.png
