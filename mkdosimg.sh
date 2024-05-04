#!/bin/bash

# script to create DOS image file from specified folder.

# $1: img file name
# $2: src files path

mkfs.msdos -C $1 1440
sudo mount -o loop $1 /media/floppy1/
sudo cp -r $2 /media/floppy1/
sudo umount /media/floppy1

