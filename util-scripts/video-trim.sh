ffmpeg -i input.mp4 -ss 00:02:00  -t 00:00:50 -c:v copy -c:a copy output.mp4
# ss - start time
# t - total time
# -c:v, -c:a copy original without encoding
