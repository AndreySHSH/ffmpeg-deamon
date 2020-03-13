# ffmpeg-demon

This repository contains a script for converting streaming video to HLS.<br>
And also .ts garbage collector. 


## cam_stream 
[cam_stream.sh](https://github.com/AndreySHSH/ffmpeg-demon/blob/master/bash-scripts/cam_stream.sh)<br>
3 arguments are passed to cam_stream.sh in the case of debug or 2 in normal operation.<br>

```bash
cam_stream.sh [rtsp://ip:port/args_get] [number_folder_render_.ts] [debug]
```
## collector_trash
[collector_trash.sh](https://github.com/AndreySHSH/ffmpeg-demon/blob/master/bash-scripts/collector_trash.sh)<br>
принемает 1 аргумент, абсолютный путь до папки где нужно удалить .ts

```bash
collector_trash.sh [absolutly_path_to_folder]
```
