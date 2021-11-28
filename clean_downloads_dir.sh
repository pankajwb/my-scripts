#!/bin/bash

echo "Hello world!"
echo " Let's clean up some files:"
cd ~/Downloads
echo "- "
echo "- "
echo "- "
echo "Cleaning Database files first"
if [ -d "databases" ]
then
	mv *.sql databases
	mv *.sql.gz databases
	mv *.sql.* databases
else
	mkdir databases
	mv *.sql databases
        mv *.sql.gz databases
	mv *.sql.* databases
fi

echo "-"
echo "-"
echo "Cleaning zip and tar balls. Moving files to zips_n_tars directory"
if [ -d "zips_n_tars" ]
then
	mv *.zip zips_n_tars
	mv *.tar.* zips_n_tars
else
	mkdir zips_n_tars
	mv *.zip zips_n_tars
        mv *.tar.* zips_n_tars
fi
echo "-"
echo "-"
echo "-"
echo "Cleaning Images. Moving images to images directory"
if [ -d "images" ]
then
	mv *.jpg images
	mv *.png images
	mv *.jpeg images
	mv *.gif images
else
	mkdir images
	mv *.jpg images
        mv *.png images
        mv *.jpeg images
        mv *.gif images
fi
echo "-"
echo "-"
echo "-"
echo "Cleaning Videos. Moving to videos directory"
if [ -d "videos" ]
then
        mv *.mp4 videos
        mv *.mkv videos
else
        mkdir videos
	mv *.mp4 videos
        mv *.mkv videos
fi
echo "---"
echo " | "
echo " | "
echo " | "
echo " | "
echo "---"
echo "Cleaning is done for now"
notify-send "The downloads folder was organized automatically. "

