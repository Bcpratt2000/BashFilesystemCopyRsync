#!/bin/bash

SHELL=/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin

#config variables
remote_server='192.168.1.14'
remote_dir='/mnt/2TB_Drive/BENVER'
remote_port='22'
remote_user='bkp-benver'
local_directory='/mnt/FTP_drive'

echo 'starting rsync command'

rsync -zav $local_directory $remote_user@$remote_server:$remote_dir

echo 'All operations completed'
