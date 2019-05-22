#!/bin/bash

declare FOLDER="/media/sdc1/pose-anomaly-detection/temp-ffmpeg/"
declare RESULTS="/media/sdc1/pose-anomaly-detection/pose-features/Assault/"
declare ALPHAPOSE_FOLDER_DEMO="/media/sdc1/AlphaPose/demo.py"

python3 $ALPHAPOSE_FOLDER_DEMO --indir ${FOLDER} --outdir ${RESULTS}