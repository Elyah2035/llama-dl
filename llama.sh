# Copyright (c) Meta Platforms, Inc. and affiliates.
# This software may be used and distributed according to the terms of the GNU General Public License version 3.

#
# UPDATE from Shawn (Mar 5 @ 2:43 AM): Facebook disabled the original URL. I've mirrored the files to an R2 bucket, which this script now points to.
#

TARGET_FOLDER="./"             # where all files should end up
cd ${TARGET_FOLDER}

echo "Downloading tokenizer"
wget "https://agi.gpt4.org/llama/LLaMA/tokenizer.model" -O "tokenizer.model"
wget "https://agi.gpt4.org/llama/LLaMA/tokenizer_checklist.chk" -O "tokenizer_checklist.chk"
md5sum -c tokenizer_checklist.chk

echo "Downloading 7B"
mkdir "7B"
wget "https://agi.gpt4.org/llama/LLaMA/7B/consolidated.00.pth" -O "7B/consolidated.00.pth"
wget "https://agi.gpt4.org/llama/LLaMA/7B/params.json" -O "7B/params.json"
wget "https://agi.gpt4.org/llama/LLaMA/7B/checklist.chk" -O "7B/checklist.chk"
echo "Checking checksums"
(cd "7B" && md5sum -c checklist.chk)

echo "Downloading 13B"
mkdir "13B"
wget "https://agi.gpt4.org/llama/LLaMA/13B/consolidated.00.pth" -O "13B/consolidated.00.pth"
wget "https://agi.gpt4.org/llama/LLaMA/13B/consolidated.01.pth" -O "13B/consolidated.01.pth"
wget "https://agi.gpt4.org/llama/LLaMA/13B/params.json" -O "13B/params.json"
wget "https://agi.gpt4.org/llama/LLaMA/13B/checklist.chk" -O "13B/checklist.chk"
echo "Checking checksums"
(cd "13B" && md5sum -c checklist.chk)

echo "Downloading 30B"
mkdir "30B"
wget "https://agi.gpt4.org/llama/LLaMA/30B/consolidated.00.pth" -O "30B/consolidated.00.pth"
wget "https://agi.gpt4.org/llama/LLaMA/30B/consolidated.01.pth" -O "30B/consolidated.01.pth"
wget "https://agi.gpt4.org/llama/LLaMA/30B/consolidated.02.pth" -O "30B/consolidated.02.pth"
wget "https://agi.gpt4.org/llama/LLaMA/30B/consolidated.03.pth" -O "30B/consolidated.03.pth"
wget "https://agi.gpt4.org/llama/LLaMA/30B/params.json" -O "30B/params.json"
wget "https://agi.gpt4.org/llama/LLaMA/30B/checklist.chk" -O "30B/checklist.chk"
echo "Checking checksums"
(cd "30B" && md5sum -c checklist.chk)

echo "Downloading 65B"
mkdir "65B"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.00.pth" -O "65B/consolidated.00.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.01.pth" -O "65B/consolidated.01.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.02.pth" -O "65B/consolidated.02.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.03.pth" -O "65B/consolidated.03.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.04.pth" -O "65B/consolidated.04.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.05.pth" -O "65B/consolidated.05.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.06.pth" -O "65B/consolidated.06.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/consolidated.07.pth" -O "65B/consolidated.07.pth"
wget "https://agi.gpt4.org/llama/LLaMA/65B/params.json" -O "65B/params.json"
wget "https://agi.gpt4.org/llama/LLaMA/65B/checklist.chk" -O "65B/checklist.chk"
echo "Checking checksums"
(cd "65B" && md5sum -c checklist.chk)
