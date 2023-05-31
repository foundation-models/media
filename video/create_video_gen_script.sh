if [ ! -f $1.txt ]
then
    cd parts
    ls -rt *.mkv | sed "s/.*/dvc add '&'/" > dvc_add.sh
    ls -rt *.mkv | sed "s/.*/dvc push '&'/" >> dvc_add.sh
    sh dvc_add.sh
    ls -rt parts/*.mkv | sed "s/.*/file '&'/" > $1.txt
else
    # sh $1.pull.sh
    # ffmpeg -f concat -safe 0 -i "$1.txt" -c copy "$1.mkv"
    ffmpeg -f concat -i "$1.txt" -vcodec copy -acodec copy merged.MOV
    # ffmpeg -f concat -i files_to_combine.txt -vcodec copy -acodec copy merged.MOV
    # ffmpeg -i "$1.mkv" -codec copy "$1.mp4"
fi
