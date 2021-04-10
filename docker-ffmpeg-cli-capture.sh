#! /bin/sh

START_TIME=$1
VIDEO_FILE=$2

# params
#   $1 => 文件路径
function get_filename_without_suffix() {
    local file=$1
    # local suffix=${file##*.}
    local filename_without_suffix=${file%.*}
    echo "${filename_without_suffix}"
}


docker-ffmpeg-cli.sh -i "${VIDEO_FILE}" -ss "${START_TIME}" -vframes 1 "$(get_filename_without_suffix "${VIDEO_FILE}").jpg"
