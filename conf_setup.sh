#!/bin/sh
echo "config setup..."

#echo "cd to .vim directory"
#cd ~/config_syncby_github

echo "create new vimrc..."
ln -s ~/conf_syncby_github/vimrc		~/.vimrc

#git submodule init
#git submodule update

echo "install plugin..."
sudo apt-get install fonts-powerline
vi +BundleInstall! +qall

echo "create other config..."
ln -s ~/conf_syncby_github/ss.json				~/ss.json
ln -s ~/conf_syncby_github/zshrc				~/.zshrc
ln -s ~/conf_syncby_github/bash_aliases			~/.bash_aliases
ln -s ~/conf_syncby_github/bashrc				~/.bashrc
ln -s ~/conf_syncby_github/tmux.conf			~/.tmux.conf
ln -s ~/conf_syncby_github/ycm_extra_conf.py	~/.ycm_extra_conf.py

#echo "backup origin vimrc..."
#if [ -f "$HOME/.vimrc" ]; then
#    mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
#fi

