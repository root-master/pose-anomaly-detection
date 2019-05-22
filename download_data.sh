#!/bin/bash

declare -a URLS=("https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AACxcnr1G--t0KWdrpj1tQmpa/Anomaly_Train.txt?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AABJtkTnNc8LcVTfH1gE_uFoa/Anomaly-Videos-Part-1.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAbdSEUox64ZLgVAntr2WgSa/Anomaly-Videos-Part-2.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAgpsRNSHI_BtRnSCxxR7j9a/Anomaly-Videos-Part-3.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AABqY-3fJSmSMafFIlJXRE-9a/Anomaly-Videos-Part-4.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AACyDI-0oRqqiqUcAulw_x5wa/Normal_Videos_for_Event_Recognition.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAtKU-7XmSNEJE2T0BGHw8-a/ReadMe-Anomaly-Detection.txt?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AADjSOQ-NLIsCVNWT0Mrhp5ca/Temporal_Anomaly_Annotation_for_Testing_Videos.txt?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AACeDPUxpB6sY2jKgLGzaEdra/Testing_Normal_Videos.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AADEUCsLOCN_jHmmx7uFcUhHa/Training-Normal-Videos-Part-1.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAAHZByMMGCVms4hhHZU2pMBa/Training-Normal-Videos-Part-2.zip?dl=0"
				 "https://www.dropbox.com/sh/75v5ehq4cdg5g5g/AAD5w76F_SZLdBgxVdvko-z5a/UCF_Crimes-Train-Test-Split.zip?dl=0")


if [ -d "data" ]; then
	echo "data folder already exsits!"
else
	echo "data folder is created."
	mkdir "data"
fi

declare -a FILENAMES=("data/Anomaly_Train.txt"
				      "data/Anomaly-Videos-Part-1.zip"
				  	  "data/Anomaly-Videos-Part-2.zip"
				      "data/Anomaly-Videos-Part-3.zip"
				      "data/Anomaly-Videos-Part-4.zip"
				      "data/Normal_Videos_for_Event_Recognition.zip"
				      "data/ReadMe-Anomaly-Detection.txt"
				      "data/Temporal_Anomaly_Annotation_for_Testing_Videos.txt"
				      "data/Testing_Normal_Videos.zip"
				      "data/Training-Normal-Videos-Part-1.zip"
				      "data/Training-Normal-Videos-Part-2.zip"
				      "data/UCF_Crimes-Train-Test-Split.zip")



for i in "${!URLS[@]}"
do
	wget -O "${FILENAMES[$i]}" "${URLS[$i]}"
done