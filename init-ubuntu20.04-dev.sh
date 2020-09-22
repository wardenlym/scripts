sudo apt-get update
sudo apt-get install -y wget curl make git python zsh tmux vim
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update
sudo apt-get -y install esl-erlang
sudo apt-get -y install elixir

git config --global user.name wardenlym
git config --global user.email wardenlym@gmail.com
git config --global credential.helper store

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sed -i 's/plugins=(git)/plugins=(git golang docker kubectl aws mix)/' .zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' .zshrc
sudo apt autoremove
sudo reboot