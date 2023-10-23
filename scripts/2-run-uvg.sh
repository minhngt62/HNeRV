#!/bin/bash

# Beauty
mkdir -p data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/Beauty_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/Beauty_1920x1080_120fps_420_8bit_YUV" --vid beauty \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# HoneyBee
mkdir -p data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/HoneyBee_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/HoneyBee_1920x1080_120fps_420_8bit_YUV" --vid honey \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# Bosphorus
mkdir -p data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/Bosphorus_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/Bosphorus_1920x1080_120fps_420_8bit_YUV" --vid bosphorus \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# Jockey
mkdir -p data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/Jockey_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/Jockey_1920x1080_120fps_420_8bit_YUV" --vid jockey \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# ReadySetGo
mkdir -p data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/ReadySteadyGo_1920x1080_120fps_420_8bit_YUV" --vid ready \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# ShakenDry
mkdir -p data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/ShakeNDry_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/ShakeNDry_1920x1080_120fps_420_8bit_YUV" --vid shake \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001

# YachtRide
mkdir -p data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV
ffmpeg -pix_fmt yuv420p -s 1920x1080 -i data/YachtRide_1920x1080_120fps_420_8bit_YUV.yuv -f image2 data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV/f%05d.png

!python "HNeRV/train_nerv_all.py"  --outf "checkpoint"  --data_path "data/uvg/YachtRide_1920x1080_120fps_420_8bit_YUV" --vid yatch \
    --conv_type convnext pshuffel --act gelu --norm none  --crop_list 1080_1920  \
    --resize_list -1 --loss Fusion6  --enc_strds 5 4 3 2 --enc_dim 64_16 \
    --dec_strds 5 4 3 2 --ks 0_1_5 --reduce 1.2 --dump_images \
    --modelsize 3 -e 300 --eval_freq 150 --lower_width 12 -b 2 --lr 0.001
