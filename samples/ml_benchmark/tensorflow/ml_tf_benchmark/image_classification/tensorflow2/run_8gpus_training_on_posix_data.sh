#!/bin/bash

python3 ./resnet_ctl_imagenet_main.py \
             --num_gpus=8 \
             --base_learning_rate=9.5 \
             --distribution_strategy=mirrored \
             --all_reduce_alg=nccl \
             --batch_size=2496 \
             --data_dir=/vepfsdata/imgnet/ILSVRC2012-TF/train \
             --datasets_num_private_threads=48 \
             --dtype=fp16 \
             --enable_device_warmup \
             --enable_eager \
             --epochs_between_evals=4 \
             --eval_offset_epochs=2 \
             --eval_prefetch_batchs=192 \
             --label_smoothing=0.1 \
             --log_steps=125 \
             --lr_schedule=polynomial \
             --model_dir=./output \
             --optimizer=LARS \
             --noreport_accuracy_metrics \
             --single_l2_loss_op \
             --steps_per_loop=514 \
             --tf_gpu_thread_mode=gpu_private \
             --train_epochs=39 \
             --training_prefetch_batchs=128 \
             --verbosity=0 --warmup_epochs=4 \
             --weight_decay=0.0002 \
             --num_accumulation_steps=1 \
             --nouse_synthetic_data \
             --skip_eval
