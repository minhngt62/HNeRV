#!/bin/bash

# BQTerrace
mkdir -p data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/BQTerrace2_1920x1080_60Hz_8bit_P420.yuv -f image2 data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420/f%05d.png

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420" --vid bqt \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420" --vid bqt \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 6 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420" --vid bqt \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize  -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BQTerrace2_1920x1080_60Hz_8bit_P420" --vid bqt \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 12 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# BasketballDrive
mkdir -p data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/BasketballDrive2_1920x1080_50Hz_8bit_P420.yuv -f image2 data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420/f%05d.png

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420" --vid basket \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420" --vid basket \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 6 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420" --vid basket \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 9 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/BasketballDrive2_1920x1080_50Hz_8bit_P420" --vid basket \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 12 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# Cactus
mkdir -p data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/Cactus_1920x1080_50Hz_8bit_P420.yuv -f image2 data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420/f%05d.png

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420" --vid cactus \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420" --vid cactus \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 6 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420" --vid cactus \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 9 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Cactus_1920x1080_50Hz_8bit_P420" --vid cactus \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 12 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# Kimono
mkdir -p data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/Kimono_1920x1080_24Hz_8bit_P420.yuv -f image2 data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420/f%05d.png

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420" --vid kimono \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420" --vid kimono \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 6 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420" --vid kimono \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 9 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/Kimono_1920x1080_24Hz_8bit_P420" --vid kimono \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 12 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# ParkScene
mkdir -p data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i /home/a100-5g/thangnv/CompressAI/examples/HEVC_classB/ParkScene_1920x1080_24Hz_8bit_P420.yuv -f image2 data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420/f%05d.png

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420" --vid park \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420" --vid park \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 6 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420" --vid park \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 9 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/hevc_b/ParkScene_1920x1080_24Hz_8bit_P420" --vid park \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 3 2 2 2 --enc_dim 64_16 \
    --dec_strds 5 3 2 2 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 12 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001