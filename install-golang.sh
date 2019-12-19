VERSION="1.13.4.linux-amd64"
rm go$VERSION.tar.gz
wget https://dl.google.com/go/go$VERSION.tar.gz
sudo tar -zxvf go$VERSION.tar.gz -C /usr/local/
sudo ln -sf /usr/local/go/bin/go /usr/bin/go
rm go$VERSION.tar.gz
