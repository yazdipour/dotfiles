source ~/dot-files/zsh/antigen.zsh
antigen init ~/dot-files/zsh/.antigenrc

#PATH
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#ALIAS
alias editrepo='sudo vi /etc/apt/sources.list'
alias edittmux='vi ~/.tmux.conf'
alias editant='vi ~/.antigenr'
alias editvi='vi ~/.config/nvim/init.vim'
alias editp='vi ~/.zshrc; source ~/.zshrc'

function cd { builtin cd "$@" && ls }
alias q='exit'
alias l='exa -laF'
alias la='ls -A'
alias ll='ls -alF'
alias lt='l --tree'
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

session_name="sesh"

# 1. First you check if a tmux session exists with a given name.
tmux has-session -t=$session_name 2> /dev/null

# 2. Create the session if it doesn't exists.
if [[ $? -ne 0 ]]; then
  TMUX='' tmux new-session -d -s "$session_name"
fi

# 3. Attach if outside of tmux, switch if you're in tmux.
if [[ -z "$TMUX" ]]; then
  tmux attach -t "$session_name"
else
  tmux switch-client -t "$session_name"
fi
