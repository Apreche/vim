#!/usr/bin/env bash

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
