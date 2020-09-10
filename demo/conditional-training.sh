export CUDA_VISIBLE_DEVICES=0
USE_GPU=true
TAG=flickr
SRC=de
TGT=en
DATA=${TAG}/data
OUTPUT=${TAG}/models/conditional
HPARAMS=hparams/conditional_flickr.yaml

mkdir -p ${OUTPUT}

python -m aevnmt.train \
    --src ${SRC} \
    --tgt ${TGT} \
    --training_prefix ${DATA}/training \
    --validation_prefix ${DATA}/dev \
    --output_dir ${OUTPUT} \
    --hparams_file ${HPARAMS} \
    --use_gpu ${USE_GPU} 
