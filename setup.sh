#!/usr/bin/env bash

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
rm -f ~/.config/flake8
ln -s ~/.vim/flake8 ~/.config/flake8
