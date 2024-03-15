git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp && git pull && make clean && LLAMA_CUBLAS=1 make
pip install -r requirements.txt
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh |  bash
apt-get install git-lfs
cd ..
curl -O -L https://gist.githubusercontent.com/abideenml/48f7fc24460a0f5942c853b09e5cda20/raw/gguf.py
python gguf.py --MODEL_ID $MODEL_ID --QUANTIZATION_METHODS $QUANTIZATION_METHODS --USERNAME $USERNAME --HF_TOKEN $TOKEN
