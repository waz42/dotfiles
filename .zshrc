zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.bash
fpath=(~/.zsh/completion $fpath)

# シェル関数`compinit`の自動読み込み
autoload -Uz compinit && compinit -i
#gitのブランチ名を表示する
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats '%b'
# プロンプトを表示する直前に毎回実行する
precmd () { vcs_info }
setopt prompt_subst
#export PROMPT='%K{250} %F{016}%C%k%K{118}%f%F{250}%f%F{016}%{${vcs_info_msg_0_}%f%k%F{118}%f $'


#prompt
# Background color : %K{} %k
# Foreground color : %F{} %f
PS1='%K{242}%F{000}%n%f%F{239}@%f%F{000}%m%f%k %~ %K{118}%F{250}%f%F{016}%{${vcs_info_msg_0_}%f%k%F{118}%f %# '

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#alias
alias ll='ls -la'

export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"
