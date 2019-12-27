sudo apt-get update

sudo apt-get install -y make git python zsh tmux vim

curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-docker-ce.sh | sh
curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-kubeadm.sh | sh
curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-golang.sh | sh
curl https://raw.githubusercontent.com/wardenlym/scripts/master/install-elixir.sh | sh

git config --global user.name wardenlym
git config --global user.email wardenlym@gmail.com
git config --global credential.helper store

sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chown -R ubuntu:ubuntu .oh-my-zsh/
sed -i 's/plugins=(git)/plugins=(git golang docker kubectl aws mix)/' .zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' .zshrc


