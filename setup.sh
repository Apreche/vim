#!/usr/bin/env bash

git submodule update --init --recursive
rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
rm -f ~/.config/flake8
ln -s ~/.vim/flake8 ~/.config/flake8
