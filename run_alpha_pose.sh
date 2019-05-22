#!/bin/bash

declare VIDEO="/media/sdc1/pose-anomaly-detection/data/Anomaly-Videos-Part-1/Assault/Assault001_x264.mp4"
declare RESULTS="/media/sdc1/pose-anomaly-detection/pose-features/Assault"
declare ALPHAPOSE_VIDEO_DEMO="/media/sdc1/AlphaPose/video_demo.py"

python3 $ALPHAPOSE_VIDEO_DEMO --video ${VIDOE} --outdir ${RESULTS} --save_video