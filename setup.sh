#!/usr/bin/env bash 

DOT_FILES=( .vimrc .zshrc .zshenv .tmux.conf)

if [ -d ~/.zsh ]; then
  echo "exist ./zsh"
else
  mkdir ~/.zsh
  curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  curl -o ~/.zsh/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  curl -o ~/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

