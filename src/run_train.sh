#!/usr/bin/env bash

if [[ $# == 0 ]]; then
  echo "usage: ./run_train.sh <DATA_SET_PATH> <PRETRAINED_MODEL_NAME (optional, defaults to bert-base-uncased)>"
else
  python train.py -task ext -mode train -bert_data_path $1 -ext_dropout 0.1 -model_path '../checkpoints' -lr 2e-3 -visible_gpus 1 -report_every 50 -save_checkpoint_steps 1000 -batch_size 3000 -train_steps 50000 -accum_count 2 -log_file ../logs/ext_bert_cnndm -use_interval true -warmup_steps 10000 -max_pos 512 -pretrained_model ${2-bert-base-uncased}

fi
