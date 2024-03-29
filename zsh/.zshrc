# --- path ---
export EDITOR=nvim
export HOMEBREW_EDITOR=nvim
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH:$HOME/.config/bin"
export PATH="$PATH:$BUN_INSTALL/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/aws-tools/"
export PATH="$PATH:$HOME/.cargo/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# ANTIGEN
export DISABLE_UNTRACKED_FILES_DIRTY="true" # disable dirty check for git repo to speed up zsh
export ANTIGEN="$HOME/.config/antigen/.antigenrc" # antigen - if fckd? rm -rf ~/.antigen/ 
rm ~/.antigen/.lock -f
source ~/.config/antigen/antigen.zsh
antigen init $ANTIGEN

# --- alias ---
# CONFIG
alias editt='v ~/.tmux.conf'
alias editant="v $ANTIGEN"
alias editv='v ~/.config/nvim/'
alias editp='v ~/.zshrc; . ~/.zshrc'
alias editrepo='sudo vi /etc/apt/sources.list'
alias lsrepo='cd /etc/apt/sources.list.d/; ls'

# OS
alias q='exit'
alias cls='clear'
alias l='lsd -laF'
alias la='lsd -A'
alias ll='lsd -alF'
alias lt='lsd --tree'
alias ltt='lsd -alF --tree'
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias pt='procs --tree'
alias pw='procs --watch'
alias wport='netstat -ltnp'
alias sizedir='du -shc ./*'
alias cat='bat --style=plain'

# UTILS
#alias find='fd'
alias about='neofetch'
alias version='lsb_release -a'
alias p1='ping 1.1.1.1'
alias debi='sudo dpkg -i'
alias grep='rg'
alias uziptar='tar -xzf'
alias dif='diff -yZB'
alias dl='aria2c'
alias countfile='ls -l . | egrep -c '\''^-'\'''
alias v='nvim'

# TMUX
alias t='sesh connect $(sesh list | fzf-tmux)'
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t'
alias ts='tmux switch -t'

# FZF
# CTRL+R: search history
# --> CTRL-/ to toggle small preview window to see the full command
# --> CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
# CTRL+T: search for files in the current directory
export FZF_CTRL_T_OPTS='--preview "bat -n --color=always {}"'
# ALT+C=CTRL+F: cd into the selected directory
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"
bindkey -s ^p 'sesh connect $(sesh list | fzf-tmux) \n'
bindkey -s ^f 'v ^t'

# DEV
alias -s {md,txt,js,css,html,htm,c,cpp}=nvim
alias py='python'
alias pip3='sudo /usr/bin/pip3'
alias c='code'
alias cr='code -r'
alias hx='hexcurse'
alias lzgt='lazygit'

# GIT
alias gitc='git clone'
alias gits='git status'
function gitlog() { git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $@; }
alias gitpull='git pull origin '
alias gitma='git commit -a -m '
alias gitp='git push origin '
alias granch='git branch '
alias gitch='git checkout '
alias gitdf='git diff'
alias gitd='git diff HEAD~'
alias gita='git add '
alias gitm='git commit -m '
alias gitl='git log --graph --oneline --decorate'
alias gitundo='git reset --soft HEAD~1' # 

# DOCKER
alias dockstopall='docker stop $(docker ps -q)' #stop all containers
alias dockrmall='docker rm $(docker ps -q)'
alias dc='docker-compose'
alias dcu='docker-compose up dependencies'
alias dcs='docker-compose stop'

# -- eval ---
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(gh copilot alias -- zsh)"

