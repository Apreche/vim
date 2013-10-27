#!/usr/bin/env bash

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer
vim +BundleInstall +qall
