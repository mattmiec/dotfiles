#!/usr/bin/env bash

### setup adapted from https://github.com/webpro/dotfiles ###
# get dotfiles directory path
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# update dotfiles itself first
git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

### symlink dotfiles ###
# only symlink these on primary workstation
if [ "$HOST" = "HOME" ]; then
    ln -sfv "$DOTFILES_DIR/.bashrc" ~
    ln -sfv "$DOTFILES_DIR/.profile" ~
fi
# always symlink these
ln -sfv "$DOTFILES_DIR/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~

### setup vim plugins ###
if [ ! -d "$HOME/.vim" ]; then
    mkdir "$HOME/.vim"
fi
if [ ! -d "$HOME/.vim/bundle" ]; then
    mkdir "$HOME/.vim/bundle"
fi
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone "https://github.com/VundleVim/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"
fi
git --work-tree="$HOME/.vim/bundle/Vundle.vim" --git-dir="$HOME/.vim/bundle/Vundle.vim/.git" pull origin master
vim +PluginInstall +qall
if [ ! -d "$HOME/.vim/colors" ]; then
    mkdir "$HOME/.vim/colors"
fi
if [ -e "$HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim" ]; then
    ln -sfv "$HOME/.vim/bundle/vim-colors-solarized/colors/solarized.vim" "$HOME/.vim/colors/"
fi
if [ -e "$HOME/.vim/bundle/YouCompleteMe/install.py" ]; then
    "$HOME/.vim/bundle/YouCompleteMe/install.py"
fi
