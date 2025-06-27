#!/bin/bash

# Update system and install requirements
apt install -y sudo
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl git build-essential

# Install bun and reload profile
curl -fsSL https://bun.sh/install | bash
source "$HOME/.bashrc"

# Persist into PATH
export PATH="$HOME/.bun/bin:$PATH"

# Clone repo and head into the dir
git clone https://github.com/octra-labs/wallet-gen.git
cd wallet-gen

# Install project requirements
bun install

# Allow port in UFW
sudo ufw allow 8888

IP=$(curl -s ifconfig.me)
echo "***********************************************************************************************************************"
echo "Head to http://$IP:8888 and generate the wallet, make sure to back the mnemonic, private and pubic key, octro address."
echo "Once done, press CTRL + C to exit."
echo "***********************************************************************************************************************"

# Start the wallet generator
bun wallet_generator.ts

