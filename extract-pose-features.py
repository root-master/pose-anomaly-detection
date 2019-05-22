# import ffmpeg # ffmpeg-python package
import cv2 
import os 
##################### Dataset #####################
# the files in data base have certain structures
# Anomaly-Videos-Part-{1,2,3,4}
anomaly_categories = ["Assault","Arson","Fighting","Robbery"]

# One example of the anomalous video - The term "_x264.mp4" is in all videos
anomaly_video_file_name = 'Assault001_x264.mp4'
anomaly_type = "Assault"
anomaly_data_part = """data/Anomaly-Videos-Part-1"""
anomaly_video_folder_path = anomaly_data_part + """/Assault/"""
anomaly_video_file_path = anomaly_video_folder_path + anomaly_video_file_name
repo_path = """/media/pose-anomaly-detection/"""

anomaly_video_absolute_path = repo_path + anomaly_video_file_path

##################### Feature extraction and tracking ##################### 
stream = ffmpeg.input(anomaly_video_file_path)

cam = cv2.VideoCapture(anomaly_video_absolute_path)

# folder to save video frames (ffmpeg output) temporarily
temp_folder = """temp-ffmpeg/""" + anomaly_video_file_name[:-8] # remove 'x264.mp4'

# save pose features
# TODO: create folder if it doesn't exists
pose_folder = """pose-features/""" + anomaly_type

try:
# creating a folder named data 
	if not os.path.exists('data'): 
		os.makedirs('data') 
	# if not created then raise error 
except: 
	print ('Error: Creating directory of data')

# frame 
currentframe = 0
while(True): 
	# reading from frame 
	ret,frame = cam.read() 

	if ret: 
	# if video is still left continue creating images 
		name = temp_folder + str(int(currentframe)) + '.jpg'
		print('Creating frame', name) 
		# print(currentframe)

		# writing the extracted images 
		cv2.imwrite(name, frame) 

		# increasing counter so that it will 
		# show how many frames are created 
		currentframe += 1
	else: 
		break
  
# Release all space and windows once done 
cam.release() 
cv2.destroyAllWindows() 

