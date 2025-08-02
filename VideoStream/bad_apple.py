import cv2, os, time
from PIL import Image
import numpy as np
#os.chdir(os.path.realpath(__file__))

final_size = (640,480)

file_path = "D:/SteamLibrary/steamapps/common/GearBlocks/canvas.lua"

def writefile(frame):
    if cv2.waitKey(1) & 0xFF == ord('q'):
        exit()
    frame = cv2.resize(frame, final_size)
    cv2.imshow('Overlay', frame)
    rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
    img = Image.fromarray(rgb_frame)
    try:
        img.save(Frame_path)
    except Exception as e:
        print("Frame failed to save")
        print(e)
    time.sleep(1/fps)

Video_path = "./Bad Apple.mp4"
Frame_path = "./Frame.jpg"

video_capture = cv2.VideoCapture(Video_path)
fps = int(video_capture.get(cv2.CAP_PROP_FPS))
success, frame = video_capture.read()

while success:
        # Read the next frame
        writefile(frame)
        success, frame = video_capture.read()
video_capture.release()
cv2.destroyAllWindows()