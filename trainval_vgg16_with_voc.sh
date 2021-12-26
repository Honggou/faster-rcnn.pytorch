#!/bin/bash

#pascal_voc, pascal_voc_0712, coco, imagenet, vg
export DATASET=pascal_voc
#vgg16, res101, res50, res512
export NET=vgg16
export BATCH_SIZE=2
export WORKER_NUMBER=1
export LEARNING_RATE=0.001
export DECAY_STEP=5
#sgd, adam
export OPTIMIZER=sgd
export MAX_EPOCHS=1

python trainval_net.py \
                   --dataset $DATASET --net $NET \
                   --bs $BATCH_SIZE --nw $WORKER_NUMBER --epochs=$MAX_EPOCHS \
                   --o $OPTIMIZER --lr $LEARNING_RATE --lr_decay_step $DECAY_STEP \
                   --cuda --use_tfb