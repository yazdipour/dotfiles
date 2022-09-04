source $HOME/antigen.zsh
antigen init .antigenrc

#PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"

#ALIAS
alias editrepo='sudo vi /etc/apt/sources.list'
alias edittmux='sudo vi ~/.tmux.conf'
alias editant='sudo vi ~/.antigenr'
alias editvi='sudo vi ~/.config/nvim/init.vim'
alias editp='sudo vi ~/.zshrc; source ~/.zshrc'

function cd { builtin cd "$@" && ls }
alias q='exit'
alias l='exa -laF'
alias la='ls -A'
alias ll='ls -alF'
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias cls='clear'
alias v='nvim'
alias grep='rg'
alias find='fd'
alias countfile='ls -l . | egrep -c '\''^-'\'''
alias sizedir='du -shc ./*'
alias p1='ping 1.1.1.1'
alias about='neofetch'
alias version='lsb_release -a'
alias uzip='tar -xzf'
alias dif='diff -yZB'
alias dl='aria2c'
alias debi='sudo dpkg -i'
alias pt='procs --tree'
alias pw='procs --watch'

# Dev
alias -s {md,txt,js,css,html,htm,c,cpp}=vi
alias py='python'
alias pip3='sudo /usr/bin/pip3'
alias c='code'
alias cr='code -r'
alias hx='hexcurse'

# GIT
alias gitc='git clone'
alias gits='git status'
alias gitl='git log'
alias gitpull='git pull origin '
alias gitma='git commit -a -m '
alias gitp='git push origin '
alias granch='git branch '
alias gitch='git checkout '
alias gitdf='git diff'
alias gitd='git diff HEAD~'
alias gita='git add '
alias gitm='git commit -m '
alias gitconfig='git config --list'
alias gitl='git log --graph --oneline --decorate'

eval "$(starship init zsh)"