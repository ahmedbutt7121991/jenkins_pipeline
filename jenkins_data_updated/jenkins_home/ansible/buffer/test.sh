#!/bin/bash


echo "Script iis running on remote host using ansible" > source.txt

old_filename=source.txt

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

new_filename=$old_filename.$current_time.txt

mv $old_filename $new_filename

gzip -c $new_filename > $new_filename.gz

