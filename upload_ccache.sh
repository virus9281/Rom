#!/bin/bash

tar_zst ()
{
    while true
	do sleep 95m
	tar "-I zstd -1 -T8" -cf $1.tar.zst $1
	rclone copy $1.tar.zst brrbrr:$1/$rom -P
    done
}

cd /tmp
tar_zst ccache