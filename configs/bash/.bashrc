[[ $- != *i* ]] && return

export PS1='\n\[\033[1;32m\]\u\[\033[0m\] \[\033[1;36m\]\w\[\033[0m\]\n\[\033[33m\]\$\[\033[0m\] '
export PATH="$HOME/.local/bin:$PATH"
export TERM=xterm-256color
export LANG=C.UTF-8

export EDITOR=vim
export VISUAL=vim
# export EDITOR=hx
# export VISUAL=hx

# export HTTP_PROXY=http://127.0.0.1:7890
# export HTTPS_PROXY=http://127.0.0.1:7890

export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000

shopt -s histappend
shopt -s checkwinsize

alias ..='cd ..'
alias ...='cd ../..'

alias cls='clear'

alias ls='ls --color=auto'
alias la='ls -AF'
alias ll='ls -lhAF'

# alias ls='lsd'
# alias la='lsd -a'
# alias ll='lsd -al'
# alias lt='lsd --tree'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias bat='batcat'
# alias fd='fdfind'

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

bind 'TAB:menu-complete'
