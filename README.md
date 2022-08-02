# ti-live
Raspberry pi setup to serve "current" webcam picture over http as well as capture images for timelapse

This allows players in an 8-player Twilight Imperium game to use an ipad to look at the board, objectives, etc while seated a little too far from the board.

NOTE: This is not currently general purpose.  Lots of hard-coded directories.

![Camera setup](/media/ti-overhead.jpg)


Here is the command I used to make the timelapse video.

```
ffmpeg -r 24 -pattern_type glob -i "snap-*.png" -pix_fmt yuv420p time-lapse-24.mp4
```

