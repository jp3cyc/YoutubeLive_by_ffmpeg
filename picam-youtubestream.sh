raspivid -o - -t 0 -w 854 -h 480 -vf -hf -fps 10 -b 500000 | ffmpeg -re -ar 44100 -ac 2 -acodec pcm_s16le -f s16le -ac 2 -i /dev/zero -f h264 -i - -vcodec copy -acodec aac -ab 128k -g 50 -strict experimental -threads 0 -f flv rtmp://a.rtmp.youtube.com/live2/[your-streamkey-here]

