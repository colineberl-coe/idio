#!/bin/bash

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
cd ~/.vim && git init
git submodule add https://github.com/tpope/vim-pathogen bundle/vim-pathogen
ln -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

# install vim plugins
git submodule add https://github.com/easymotion/vim-easymotion bundle/easymotion
git submodule add https://github.com/sirver/ultisnips bundle/ultisnips
git submodule add https://github.com/vim-scripts/pep8.git bundle/pep8
git submodule add https://github.com/alfredodeza/pytest.vim.git bundle/py.test
git submodule add https://github.com/tpope/vim-surround.git bundle/surround
git submodule add https://github.com/ajh17/VimCompletesMe bundle/VimCompletesMe
git submodule add https://github.com/christoomey/vim-tmux-navigator bundle/vim-tmux-navigator
git submodule add https://github.com/Townk/vim-autoclose bundle/vim-autoclose
git submodule add https://github.com/mitechie/pyflakes-pathogen.git
git submodule add https://github.com/klen/python-mode bundle/python-mode

# vim-snippets dependencies
git submodule add https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
git submodule add https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
git submodule add https://github.com/honza/vim-snippets.git bundle/vim-snippets

# Finish submodule config
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update