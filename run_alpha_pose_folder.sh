#!/bin/bash
declare VIDEO="/media/sdc1/pose-anomaly-detection/data/Anomaly-Videos-Part-1/Assault/Assault001_x264.mp4"
declare FOLDER="/media/sdc1/pose-anomaly-detection/temp-ffmpeg/"
declare RESULTS="/media/sdc1/pose-anomaly-detection/pose-features/Assault/"
declare ALPHAPOSE_FOLDER_DEMO="/media/sdc1/AlphaPose/demo.py"

python3 $ALPHAPOSE_FOLDER_DEMO --indir ${FOLDER} --outdir ${RESULTS}

python3 demo.py --indir /media/sdc1/pose-anomaly-detection/temp-ffmpeg/ --outdir /media/sdc1/pose-anomaly-detection/pose-features/Assault/ -detbatch 2

python3 video_demo.py --sp --video /media/sdc1/pose-anomaly-detection/data/Anomaly-Videos-Part-1/Assault/Assault001_x264.mp4 --outdir /media/sdc1/pose-anomaly-detection/pose-features/Assault/ --save_video

python3 tracker-general.py --imgdir /media/sdc1/pose-anomaly-detection/temp-ffmpeg/ --in_json /media/sdc1/pose-anomaly-detection/pose-features/Assault/alphapose-results.json --out_json /media/sdc1/pose-anomaly-detection/pose-features/Assault/alphapose-results-forvis-tracked.json --visdir /media/sdc1/pose-anomaly-detection/render