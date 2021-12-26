#!/bin/bash

#pascal_voc, pascal_voc_0712, coco, imagenet, vg
export DATASET=pascal_voc

#vgg16, res101, res50, res512
export NET=vgg16

export SESSION=1
export EPOCH=1
export CHECKPOINT=5010

python test_net.py --dataset $DATASET --net $NET \
                   --checksession $SESSION --checkepoch $EPOCH --checkpoint $CHECKPOINT \
                   --vis --cuda