#!/bin/bash

/usr/bin/python3 /home/peter/takepic.py
mostrecentpic=$(ls /home/peter/images/*.png -tp | grep -v /$ | head -1)
/usr/bin/python3 /home/peter/yolov7/detect-mod.py  --nosave --weights /home/peter/yolov7/weights/best.pt --conf 0.40 --img-size 640 --source $mostrecentpic
/usr/bin/find /home/peter/images/ -maxdepth 1 -mtime +3 -type f -delete
