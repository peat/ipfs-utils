#!/bin/sh

# refresh packages
sudo apt update
sudo apt upgrade

# install Go, etc
sudo apt install golang-go git tmux curl

# install ipfs-update
go get -u github.com/ipfs/ipfs-update

# update PATH and add GOPATH to .profile
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.profile
echo 'export GOPATH="$HOME/go"' >> ~/.profile

# use them exports
source ~/.profile

# install latest IPFS
ipfs-update install latest

# initialize the repo
ipfs init
