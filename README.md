# ffmpeg-demon

This repository contains a script for converting streaming video to HLS.<br>
And also .ts garbage collector. 

3 arguments are passed to cam_stream.sh in the case of debug or 2 in normal operation.<br>

```bash
cam_stream.sh rtsp://ip:port/args_get number_folder_render_.ts [debug]
