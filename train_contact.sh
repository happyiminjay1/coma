#!/usr/bin/env bash


python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 256' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 64' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 16 16 16 32

python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 64
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 64' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64

python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 32

#############

python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32

python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32



python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64

python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256 new' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 256' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 32

python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 mlp_freeze mlp_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 mlp_freeze both ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 mlp_freeze both_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 1 0 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 mlp_freeze mano_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 1 1 

# 1st
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new mlp_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new both ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new both_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 1 0 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new mano_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 1 1 

# 2nd
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256 new mlp_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 64 --loss_weight 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256 new both ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 64 --loss_weight 1 1 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256 new both_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 64 --loss_weight 1 0 1 0 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256 new mano_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 256' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 256 --out_channels 32 32 32 64 --loss_weight 1 0 1 1 

# 3rd
python main.py --exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128 new mlp_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32 --loss_weight 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128 new both ganhand' --ori_exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32 --loss_weight 1 1 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128 new both_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32 --loss_weight 1 0 1 0 
python main.py --exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128 new mano_none ganhand' --ori_exp_name 'interpolation_exp_mano_contact[16, 16, 16, 32] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32 --loss_weight 1 0 1 1 

Final Please
#############

python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 0 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 0 0 1 0 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 1 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 0 0 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 2 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 0 0 0 1 0 1 1
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 3 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 64 --loss_weight 1 1 0 0 1 1 1 1 

python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 4 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 0 0 1 1 0 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 5 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 1 0 1 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 6 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 0 0 1 1 0 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 7 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 1 0 1 1 1 1 1 

python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 4 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 48 --out_channels 16 16 16 32 --loss_weight 0 0 0 1 1 0 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 5 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 48 --out_channels 16 16 16 32 --loss_weight 0 1 0 1 1 1 1 0
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 6 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 48 --out_channels 16 16 16 32 --loss_weight 0 0 0 1 1 0 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 7 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 48 --out_channels 16 16 16 32 --loss_weight 0 1 0 1 1 1 1 1 



python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 8 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 1 0 1 0 0 1 1 
python main.py --exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128 new 9 ganhand 10' --ori_exp_name 'interpolation_exp_mano_contact[32, 32, 32, 64] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 64 --out_channels 32 32 32 64 --loss_weight 0 1 0 1 0 0 1 1 

##############

'l1_loss' : loss_weight[0], 'l1_mano_loss' : loss_weight[1], 'contact_classify_loss' : loss_weight[2], 'taxonomy_loss' : loss_weight[3], 
                        'l1_loss_ganhand' : loss_weight[4], 'l1_mano_loss_ganhand' : loss_weight[5], 'contact_classify_loss_ganhand' : loss_weight[6], 'taxonomy_loss_ganhand' : loss_weight[7]}

1	0	0	0	1	0	1	0
1	1	0	0	1	1	1	0
1	0	0	0	1	0	1	1
1	1	0	0	1	1	1	1
1	0	0	1	1	0	1	0
1	1	0	1	1	1	1	0
1	0	0	1	1	0	1	1
1	1	0	1	1	1	1	1
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32

python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32




python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32

python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32




python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 0 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 1 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 2 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32
python main.py --exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[32 32 32 32] 128' --split 'interpolation' --device_idx 3 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 32 32 32 32

python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 pretrained' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 4 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 mlp_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 5 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 decoder_freeze' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 6 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
python main.py --exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128 new' --ori_exp_name 'interpolation_exp_mano_contact[16 16 16 32] 128' --split 'interpolation' --device_idx 7 --in_channels 27 --output_channels 13 --latent_channels 128 --out_channels 16 16 16 32
