#!/bin/bash
#SBATCH --job-name=FHO_VIDEO_540ss
#SBATCH --gres=gpu:1
#SBATCH -o VIDEO_540ss_FHO.out
#SBATCH -e VIDEO_540ss_FHO_.err
#SBATCH --mem-per-gpu=20G 
#SBATCH --cpus-per-gpu=12
#SBATCH -p batch_sw_grad
#SBATCH --time=7-00:00:0
#SBATCH -w sw14

ego4d --output_directory="/data/datasets/ego4d/FHO" --datasets video_540ss --aws_profile_name default --benchmark FHO -y



