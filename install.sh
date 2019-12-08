MODELS_DIRECTORY=generator/gpt2/models
MODEL_VERSION=model_v5
MODEL_NAME=model-550
DOWNLOAD_URL=http://130.211.31.182:80

cd ${MODELS_DIRECTORY}
mkdir ${MODEL_VERSION}
cd ${MODEL_VERSION}
apt-get install aria2 > /dev/null
aria2c -x 16 -s 32 "${DOWNLOAD_URL}/${MODEL_VERSION}/${MODEL_NAME}.data-00000-of-00001"
echo "Download Complete!"
cd ../../../..
pip install -r requirements.txt > /dev/null
