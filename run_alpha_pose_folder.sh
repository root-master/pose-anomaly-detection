#!/bin/bash

declare FOLDER="/media/sdc1/pose-anomaly-detection/temp-ffmpeg/"
declare RESULTS="/media/sdc1/pose-anomaly-detection/pose-features/Assault/"
declare ALPHAPOSE_FOLDER_DEMO="/media/sdc1/AlphaPose/demo.py"

python3 $ALPHAPOSE_FOLDER_DEMO --indir ${FOLDER} --outdir ${RESULTS}

python3 demo.py --indir /media/sdc1/pose-anomaly-detection/temp-ffmpeg/ --outdir /media/sdc1/pose-anomaly-detection/pose-features/Assault/