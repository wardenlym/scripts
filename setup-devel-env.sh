#!/bin/bash -x
sudo apt-get update

sudo apt-get install -y git python zsh tmux vim

git clone https://github.com/wardenlym/dotfiles .dotfiles && cd .dotfiles && ./setup.sh

curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-docker-ce.sh | sh
curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-kubectl.sh | sh

sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/plugins=(git)/plugins=(git golang docker kubectl aws)/' .zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' .zshrc


