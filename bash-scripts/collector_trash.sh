#!/bin/bash -       
#title           :collector trash
#description     :collector trash ts files
#author          :Andrey SHSH
#date            :11032020
#version         :0.4    
#usage           :bash collector_trash.sh abs_path_to_trash_files
#notes           :empty
#bash_version    :1.0-release
#==============================================================================

# `rm -Rf $1*.ts` -- depricate
ls -t $1 | sed '1,2d' | rm -Rf $1*.ts
COUNT_FILE=`ls -f $1 | wc -l`
echo 'done... this folder '$COUNT_FILE' files now'