ZSH_THEME='frontcube'
# antigen
rm ~/.antigen/.lock -f
export ANTIGEN="$HOME/.config/antigen/.antigenrc"
source ~/.config/antigen/antigen.zsh
antigen init $ANTIGEN

#PATH
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/aws-tools/"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#ALIAS
alias lsrepo='cd /etc/apt/sources.list.d/; ls'
alias editrepo='sudo vi /etc/apt/sources.list'
alias edittmux='v ~/.tmux.conf'
alias editant="v $ANTIGEN"
alias editv='cd ~/.config/nvim/; ls'
alias editp='v ~/.zshrc; source ~/.zshrc'

function cd { builtin cd "$@" && ls }
alias q='exit'
alias t='tmux'
alias l='eza -laF'
alias la='eza -A'
alias ll='eza -alF'
alias lt='eza -l -T --git-ignore --hyperlink -L 2'
alias ltt='eza -alF --tree'
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias cls='clear'
alias v='nvim'
alias grep='rg'
alias find='fd'
alias cat='bat --style=plain'
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
alias wport='netstat -ltnp'
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
alias githubemail='git config user.email "yazdipour@users.noreply.github.com"'

# DOCKER
alias dockstopall='docker stop $(docker ps -q)' #stop all containers
alias dockrmall='docker rm $(docker ps -q)'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcs='docker-compose stop'

# EVAL
eval "$(zoxide init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Automatically start tmux
# if [ -z "$TMUX" ]; then
#     tmux attach -t 1 || tmux new -s 1
# fi