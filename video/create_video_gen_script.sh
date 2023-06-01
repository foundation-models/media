if [ ! -f parts/$1.txt ]
then
    cd parts
    ls -rt *.mkv | sed "s/.*/dvc add '&'/" > dvc_add.sh
    ls -rt *.mkv | sed "s/.*/dvc push '&'/" >> dvc_add.sh
    ls -rt *.mkv | sed "s/.*/dvc pull '&'/" >> $1.dvc_pull.sh
    ls -rt *.mkv | sed "s/.*/file '&'/" > $1.txt
    sh dvc_add.sh
else
    cd parts
    sh $1.dvc_pull.sh
    ffmpeg -f concat -safe 0 -i "$1.txt" -c copy "../$1.mkv"
    # ffmpeg -f concat -i "$1.txt" -vcodec copy -acodec copy merged.MOV
    # ffmpeg -f concat -i files_to_combine.txt -vcodec copy -acodec copy merged.MOV
    cd ..
    ffmpeg -i "$1.mkv" -codec copy "$1.mp4"
fi
