dvc pull "correct english with ChatGPT.mkv"
dvc pull "how long for gpt4 video correction.mkv"
dvc pull "avatar generation.mkv"
dvc pull "synthesia introduction.mkv"
dvc pull "synthesia crunchbase.mkv"
dvc pull "synthesia avators are not good enough.mkv"
dvc pull "video generated from my photo.mkv"
dvc pull "how long it takes to be open to public.mkv"

ffmpeg -f concat -safe 0 -i "Video synthetic generation.txt" -c copy "Video synthetic generation.mkv"
ffmpeg -i "Video synthetic generation.mkv" -codec copy "Video synthetic generation.mp4"


