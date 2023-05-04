#!/bin/bash
# ====================================================================================================
# Multigrain(github ver)
# ====================================================================================================

# python3 baselines/GeM_baseline.py \
#     --file_list list_files/subset_1_queries \
#     --image_dir images/dev_queries \
#     --o data/230425/multigrain/subset_1_queries_multigrain.hdf5 \
#     --pca_file data/230425/multigrain/pca_multigrain.vt

# python3 baselines/GeM_baseline.py \
#     --file_list list_files/subset_1_references \
#     --image_dir images/references \
#     --o data/230425/multigrain/subset_1_references_multigrain.hdf5 \
#     --pca_file data/230425/multigrain/pca_multigrain.vt

python3 scripts/compute_metrics.py \
    --query_descs data/230425/multigrain/subset_1_queries_multigrain.hdf5 \
    --db_descs data/230425/multigrain/subset_1_references_multigrain.hdf5 \
    --gt_filepath list_files/subset_1_ground_truth.csv \
    --track2 \
    --max_dim 2000 \
    --max_results 10_000 \
    # --knn 2048
# #exp vit base 3*224*224 input -> 768 d , patch 16 
# ====================================================================================================
# ResNet
# ====================================================================================================
# # # # sub_set
# python3 baselines/GeM_baseline.py \
#     --model zoo_resnet50 \
#     --file_list list_files/train \
#     --image_dir images/train \
#     --pca_file data/resnet/pca_resnet.vt \
#     --n_train_pca 10000 \
#     --train_pca

# python3 baselines/GeM_baseline.py \
#     --model zoo_resnet50 \
#     --file_list list_files/subset_1_queries \
#     --image_dir images/dev_queries \
#     --o data/resnet/subset_1_queries_resnet.hdf5 \
#     --pca_file data/resnet/pca_resnet.vt

# python3 baselines/GeM_baseline.py \
#     --model zoo_resnet50 \
#     --file_list list_files/subset_1_references \
#     --image_dir images/references \
#     --o data/resnet/subset_1_references_resnet.hdf5 \
#     --pca_file data/resnet/pca_resnet.vt

# python3 scripts/compute_metrics.py \
#     --query_descs data/resnet/subset_1_queries_resnet.hdf5 \
#     --db_descs data/resnet/subset_1_references_resnet.hdf5 \
#     --gt_filepath list_files/subset_1_ground_truth.csv \
#     --max_dim 2000 
#     # --track2 \


# ====================================================================================================
# ViT
# ====================================================================================================
# # # # sub_set
# # # dino
# # extract for query images
# python3 baselines/ViT_baseline.py \
#     --model dino_base_patch16 \
#     --checkpoint ./models/dino_vitbase16_pretrain.pth \
#     --file_list list_files/subset_1_queries \
#     --image_dir images/dev_queries \
#     --o data/features_subset/subset_1_dev_queries_dino_base_patch16.hdf5 \
#     # --pca_file data/pca_multigrain.vt

# # reference images
# python3 baselines/ViT_baseline.py \
#     --model dino_base_patch16 \
#     --checkpoint ./models/dino_vitbase16_pretrain.pth \
#     --file_list list_files/subset_1_references \
#     --image_dir images/references \
#     --o data/features_subset/subset_1_references_dino_base_patch16.hdf5 \
#     # --pca_file data/pca_multigrain.vt

# # # mae
# # extract for query images
# python3 baselines/ViT_baseline.py \
#     --model mae_base_patch16 \
#     --checkpoint ./models/mae_pretrain_vit_base.pth \
#     --file_list list_files/subset_1_queries \
#     --image_dir images/dev_queries \
#     --o data/features_subset/subset_1_dev_queries_mae_base_patch16.hdf5 \
#     # --pca_file data/pca_multigrain.vt
# # reference images
# python3 baselines/ViT_baseline.py \
#     --model mae_base_patch16 \
#     --checkpoint ./models/mae_pretrain_vit_base.pth \
#     --file_list list_files/subset_1_references \
#     --image_dir images/references \
#     --o data/features_subset/subset_1_references_mae_base_patch16.hdf5 \
#     # --pca_file data/pca_multigrain.vt


# # # full_set
# # dino
# extract for query images
# python3 baselines/ViT_baseline.py \
#     --model dino_base_patch16 \
#     --checkpoint ./models/dino_vitbase16_pretrain.pth \
#     --file_list list_files/dev_queries \
#     --image_dir images/dev_queries \
#     --o data/dev_queries_dino_base_patch16.hdf5 \
#     --pca_file data/pca_q_dino.vt

# reference images
# for i in {0..19}; do
#      python3 baselines/ViT_baseline.py \
#           --model dino_base_patch16 \
#           --checkpoint ./models/dino_vitbase16_pretrain.pth \
#           --file_list list_files/references \
#           --i0 $((i * 50000)) --i1 $(((i + 1) * 50000)) \
#           --image_dir images/references \
#           --o data/references_${i}_dino_base_patch16.hdf5 \
#         #   --pca_file data/pca_r_dino.vt
# done

# # mae 
# # extract for query images
# python3 baselines/ViT_baseline.py \
#     --model mae_base_patch16 \
#     --checkpoint ./models/mae_pretrain_vit_base.pth \
#     --file_list list_files/dev_queries \
#     --image_dir images/dev_queries \
#     --o data/dev_queries_mae_base_patch16.hdf5 \
#     # --pca_file data/pca_q_mae.vt

# # reference images
# for i in {0..19}; do
#      python3 baselines/ViT_baseline.py \
#           --model mae_base_patch16 \
#           --checkpoint ./models/mae_pretrain_vit_base.pth \
#           --file_list list_files/references \
#           --i0 $((i * 50000)) --i1 $(((i + 1) * 50000)) \
#           --image_dir images/references \
#           --o data/references_${i}_mae_base_patch16.hdf5 \
#         #   --pca_file data/pca_r_mae.vt
# done


# exp note 
# q, r - dino, mae feature extract 230405 2gpus