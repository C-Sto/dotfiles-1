#!/bin/zsh

# This script will symlink dotfiles from the git repo directory to their appropriate locations in the user's home directory

# sets CWD variable to current directory
CWD=$(pwd)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# The next line is needed to automatically pull submodules included in the repo
git submodule update --init --recursive

# Symlinks files from repo to home directories
ln -is $CWD/.applemusic $HOME
ls -is $CWD/.battery.sh $HOME
ln -is $CWD/.p10k.zsh $HOME
ln -is $CWD/.tmux.conf $HOME
ln -is $CWD/.vimrc $HOME
ln -is $CWD/.zshrc $HOME

# Copy/configure p10k
cp -r $CWD/powerlevel10k $HOME/.oh-my-zsh/custom/themes/

#ln -is $CWD/.oh-my-zsh ~/.oh-my-zsh
