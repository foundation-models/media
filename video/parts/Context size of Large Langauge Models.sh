# dvc pull "neural networks are stateless.mkv"
# dvc pull "context size of chatgpt.mkv"
# dvc pull "context is important for llm.mkv"
# dvc pull "training or fine tuning llm is very costly.mkv"
# dvc pull "zero shot leanring and translation.mkv"

# ffmpeg -f concat -safe 0 -i "Context size of Large Langauge Models.txt" -c copy "Context size of Large Langauge Models.mkv"
ffmpeg -i "Context size of Large Langauge Models.mkv" -codec copy "Context size of Large Langauge Models.mp4"
