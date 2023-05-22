# cd parts
# ls -rt *.mkv | sed "s/.*/dvc add '&'/" > dvc_add.sh
# ls -rt *.mkv | sed "s/.*/dvc push '&'/" >> dvc_add.sh
# sh dvc_add.sh
ls -rt parts/*.mkv | sed "s/.*/file '&'/" > $1.txt
