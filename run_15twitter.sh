#!/usr/bin/env bash
python run_multimodal_classifier.py --data_dir \
    ./absa_data/twitter2015 --task_name twitter2015 --output_dir ./output/twitter2015_tb_mm_output/ \
    --bert_model bert-base-uncased --do_train --do_eval --train_batch_size 32 --mm_model TomBert --pooling first