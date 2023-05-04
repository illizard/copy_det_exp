#!/bin/bash
# # # sub_set
# # dino
python3 scripts/compute_metrics.py \
    --query_descs data/features_subset/subset_1_dev_queries_dino_base_patch16.hdf5 \
    --db_descs data/features_subset/subset_1_references_dino_base_patch16.hdf5 \
    --gt_filepath list_files/subset_1_ground_truth.csv \
    --max_dim 768 \
    --knn -1

# # mae
python3 scripts/compute_metrics.py \
    --query_descs data/features_subset/subset_1_dev_queries_mae_base_patch16.hdf5 \
    --db_descs data/features_subset/subset_1_references_mae_base_patch16.hdf5 \
    --gt_filepath list_files/subset_1_ground_truth.csv \
    --max_dim 768 \
    --knn -1

# # # full_set
# # # dino
# python3 scripts/compute_metrics.py \
#     --query_descs data/features_fullset/dev_queries_dino_base_patch16.hdf5 \
#     --db_descs data/features_fullset/references_{0..19}_dino_base_patch16.hdf5 \
#     --gt_filepath list_files/public_ground_truth.csv \
#     --max_dim 768 \
#     --track2 \
#     --knn 3

# # # # mae
# python3 scripts/compute_metrics.py \
#     --query_descs data/features_fullset/dev_queries_mae_base_patch16.hdf5 \
#     --db_descs data/features_fullset/references_{0..19}_mae_base_patch16.hdf5 \
#     --gt_filepath list_files/public_ground_truth.csv \
#     --max_dim 768 \
#     --track2 \
#     --knn 3
    

# # # exp note
# # dino
# Track 2 running matching of 4991 queries in 4991 database (768D descriptors), max_results=500000.
# Evaluating 500000 predictions (4991 GT matches)
# Average Precision: 0.02018
# Recall at P90    : 0.01643
# Threshold at P90 : -0.500878
# Recall at rank 1:  0.02905
# Recall at rank 10: 0.03306

# # mae
# Track 2 running matching of 4991 queries in 4991 database (768D descriptors), max_results=500000.
# Evaluating 500000 predictions (4991 GT matches)
# Average Precision: 0.00542
# Recall at P90    : 0.00441
# Threshold at P90 : -0.01057
# Recall at rank 1:  0.00821
# Recall at rank 10: 0.01082
