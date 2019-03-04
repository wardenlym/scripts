#!/bin/bash -x
sudo apt-get update

sudo apt-get install -y git python zsh tmux vim

wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz \
    && tar -xzf go1.12.linux-amd64.tar.gz \
    && sudo cp go/bin/go /usr/bin/go

git clone https://github.com/wardenlym/dotfiles .dotfiles && cd .dotfiles && ./setup.sh

sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker ubuntu
echo "docker installed"
