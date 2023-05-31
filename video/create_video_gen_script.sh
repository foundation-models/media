if [ ! -f $1.txt ]
then
    cd parts
    ls -rt *.mkv | sed "s/.*/dvc add '&'/" > dvc_add.sh
    ls -rt *.mkv | sed "s/.*/dvc push '&'/" >> dvc_add.sh
    ls -rt *.mkv | sed "s/.*/file '&'/" > ../$1.txt
    # sh dvc_add.sh
else
    # sh $1.pull.sh
    # ffmpeg -f concat -safe 0 -i "$1.txt" -c copy "$1.mkv"
    ffmpeg -i "$1.mkv" -codec copy "$1.mp4"
fi
