ffmpeg \
    -f alsa -thread_queue_size 8192 -i hw:1 \
    -f v4l2 -thread_queue_size 8192 -input_format yuyv422 -video_size 800x600 -framerate 10 -i /dev/video0 \
    -c:v h264_omx -b:v 768k -bufsize 768k -vsync 0 -g 16  \
    -c:a aac -b:a 128k -ar 44100 \
    -f flv rtmp://a.rtmp.youtube.com/live2/[your-streamkey-here]
