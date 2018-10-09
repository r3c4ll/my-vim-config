#!/bin/bash
#
# my-vim-config-install.sh
# by Ali Moreno <alimoreno@gmail.com>
#
# Usage: ./my-vim-config-install.sh [OPTIONS]
#
#   -f Download and setup fugitive.vim
#   -m Download and setup Molokai Color Scheme for Vim
#   -n Download and setup Neat Status Line
#   -p Download and setup Python-mode
#   -t Download and setup NERDTree


### Preparing environment

# Setup .vimrc
echo ""
echo "... Creating the .vimrc file"
cp ~/my-vim-config/_vimrc ~/.vimrc

# Setting up pathogen.vim
echo ""
echo "... Downloading and setting up Pathogen"
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


### Cloning plugins

# Download vim-fugitive
echo ""
echo "... Downloading Fugitive.VIM"
cd && cd .vim/bundle/ && \
  git clone https://github.com/tpope/vim-fugitive.git

# Download molokai
echo ""
echo "... Downloading Molokai ColorScheme"
cd && cd .vim/bundle/ && \
  git clone https://github.com/tomasr/molokai.git

# Download vim-neatstatus
echo ""
echo "... Downloading Neat Status Line"
cd && cd .vim/bundle/ && \
  git clone https://github.com/maciakl/vim-neatstatus.git

# Download python-mode
echo ""
echo "... Downloading Python Mode"
cd && cd .vim/bundle/ && \
  git clone --recursive https://github.com/python-mode/python-mode.git

# Download nerdtree
echo ""
echo "... Downloading NERDTree"
cd && cd .vim/bundle/ && \
  git clone https://github.com/scrooloose/nerdtree.git

echo ""
echo "My VIM Config is ready!"
echo ""
