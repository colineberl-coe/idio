#!/bin/bash

#### vim

./add_all_submodules.sh

# add placeholder .vimrc if it doesn't exist
if [ -e ~/.vimrc ]
then
    echo ".vimrc exists; skipping .vimrc placeholder file creation step."
else
    echo "creating ~/.vimrc ..."
    echo "source ~/idio/.vimrc" > ~/.vimrc
fi

#### bash
if [ -e ~/.bash_profile ]
then
    echo ".bash_profile exists; skipping .bash_profile placeholder file creation step."
else
    echo "creating ~/.bash_profile..."
    echo "source ~/idio/.bash_profile" > ~/.bash_profile
fi

if [ -e ~/.bashrc ]
then
    echo ".bashrc exists; skipping .bashrc placeholder file creation step."
else
    echo "creating ~/.bashrc..."
    echo "source ~/idio/.bashrc" > ~/.bashrc
fi

if [ -e ~/.inputrc ]
then
    echo ".inputrc exists; skipping .inputrc placeholder file creation step."
else
    echo "creating ~/.inputrc..."
    echo "source ~/idio/.inputrc" > ~/.inputrc
fi

#### tmux 
if [ -e ~/.tmux.conf ]
then
    echo ".tmux.conf exists; skipping .tmux.conf placeholder file creation step."
else
    echo "creating ~/.tmux.conf"
    echo "source-file ~/idio/.tmux.conf" > ~/.tmux.conf
fi

# git
cp .gitconfig ~/.gitconfig