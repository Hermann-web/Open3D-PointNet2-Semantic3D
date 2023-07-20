#!/bin/bash

ans=`dpkg-query  -W p7zip-full`
if [ -z "$ans" ]; then
	echo "Please, install p7zip-full by running: sudo apt-get install p7zip-full"
	exit -1
fi

while IFS= read -r url
do
    url=${url/%$'\r'/}  # Remove trailing %0D
    output_file=$(basename "$url")
    echo "Downloading $output_file ..."
    wget "$url"
    7z x "$output_file" -y
    rm "$output_file"  # Remove the 7z file
done < semantic3D_files.csv

mv station1_xyz_intensity_rgb.txt neugasse_station1_xyz_intensity_rgb.txt

exit 0