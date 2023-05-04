#!/bin/bash

# for i in {0..19}; do
#      python3 baselines/GeM_baseline.py \
#           --file_list list_files/train \
#           --i0 $((i * 50000)) --i1 $(((i + 1) * 50000)) \
#           --image_dir images/train \
#           --o data/train_${i}_multigrain.hdf5 \
#           --pca_file data/pca_multigrain.vt
# done

python3 scripts/score_normalization.py \
    --query_descs data/dev_queries_25k_multigrain.hdf5 \
    --db_descs data/references_{0..19}_multigrain.hdf5 \
    --train_descs data/train_{0..19}_multigrain.hdf5 \
    --factor 2.0 --n 10 \
    --o data/predictions_dev_queries_25k_normalized.csv