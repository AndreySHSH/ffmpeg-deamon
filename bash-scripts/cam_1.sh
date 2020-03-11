#!/bin/bash -       
#title           :cam_1.sh
#description     :This script will make a stream from the RSTP protocol
#author          :Andrey SHSH
#date            :11032020
#version         :0.4    
#usage           :bash cam_1.sh rtsp_path num_cam debug
#notes           :empty
#bash_version    :1.0-release
#==============================================================================


BASEDIR=`dirname $0`
PROJECT_PATH=`cd $BASEDIR; pwd`




INPUT=' -fflags +genpts -rtsp_transport  tcp -i '$1
VIDEO='-vsync 0 -copyts -vcodec copy -movflags frag_keyframe+empty_moov -an -sn'
HLS='-hls_flags delete_segments+append_list -f segment -segment_list_flags live -segment_format mpegts -segment_list'
OUTPUT=$PROJECT_PATH'/video_cam_'$2'/index.m3u8 -segment_list_type m3u8 '$PROJECT_PATH'/video_cam_'$2'/stream%02d.ts'

if 	[ "$3" ]; then
	ffmpeg $INPUT $VIDEO $HLS $OUTPUT -loglevel debug
else
	ffmpeg $INPUT $VIDEO $HLS $OUTPUT
fi

