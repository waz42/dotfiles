#!/usr/bin/env bash
set -ue

ln -sf ~/dotfiles/.zshrc ~/.zshrc
source ~/dotfiles/.zshrc


chsh -s $(which zsh)
