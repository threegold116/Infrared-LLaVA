#!/bin/bash

export HF_ENDPOINT=https://hf-mirror.com
huggingface-cli upload  --repo-type=dataset ThreeGold11602/infrared-pretrain-500k /home/sxjiang/myproject/infrared/g0002/infrared_json/caption/train_caption_500k_pretrain_upload.json train_caption_500k_pretrain.json 
huggingface-cli upload-large-folder  ThreeGold11602/syentic_images --repo-type=dataset  /home/sxjiang/myproject/infrared/g0002/infrared_images/syentic/syentic_images --num-workers=16
# huggingface-cli upload-large-folder HuggingFaceM4/Docmatix --repo-type=dataset /path/to/local/docmatix --num-workers=16
huggingface-cli upload  --repo-type=dataset ThreeGold11602/infrared-instruct-12k /home/sxjiang/myproject/infrared/g0002/infrared_json/syentic_json/syentic_instructiontune_upload.json train_instruction_12k.json