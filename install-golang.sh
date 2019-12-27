VERSION="1.13.5.linux-amd64"
rm go$VERSION.tar.gz
wget https://dl.google.com/go/go$VERSION.tar.gz
sudo rm -rf /usr/local/go
sudo tar -zxvf go$VERSION.tar.gz -C /usr/local/
sudo ln -sf /usr/local/go/bin/go /usr/bin/go
rm go$VERSION.tar.gz
