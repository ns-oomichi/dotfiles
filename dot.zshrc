# zsh setting
alias ls="ls -G"
alias ll="ls -lG"
alias lla="ls -laG"

# zsh command history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_space
setopt share_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS

# git setting
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)

# zsh completion
autoload -U compinit
compinit

# zsh color
autoload -U colors
colors

export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"
zstyle ':completion:*' list-colors ${(s.:.)LSCOLORS}

# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

setopt PROMPT_SUBST

# zsh prompt
PROMPT='[%B%F{red}%n@%m%f%b: %F{yellow}%1d%f]%F{cyan}$(__git_ps1 " (%s)")%f
%# '
RPROMPT='[%~]'

# perl setting
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

# ruby setting
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# qmk
export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(direnv hook zsh)"
