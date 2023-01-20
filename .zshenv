#editor
export EDITOR=nvim
export VISUAL=nvim

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

#virtualenv
eval "$(pyenv virtualenv-init -)"

