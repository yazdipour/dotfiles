# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/shyaz/.oh-my-zsh"
ZSH_DISABLE_COMPFIX="true"
eval $( dircolors -b $HOME/.dir_colors )
ZSH_THEME="junkfood"
export UPDATE_ZSH_DAYS=30
HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  osx
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
############################
############################
function cd { builtin cd "$@" && ls }
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias cat='bat'
alias ex='exit'
alias bye='poweroff'
alias cls='clear'

# NETWORK
alias p='ping 1.1.1.1'

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

# APPS
alias py='python'
alias tor='tor --HTTPTunnelPort 8118'
alias c='code'
alias cr='code -r'
alias hx='hexcurse'

# WSL
alias x='export DISPLAY=:0'
alias xstart='export DISPLAY=:0; xfce4-session;'

# Stuff
alias installdeb='dpkg -i'
alias editrepo='nano /etc/apt/sources.list'
alias uzip='tar -xzf '
alias gcc11='gcc -std=c11 '
alias watch='npm run serve'
alias zu='sudo -s'
alias dif='diff -yZB'
alias x32='sudo service binfmt-support start'
alias pip3='sudo /usr/bin/pip3'
# PATH
export PATH="$PATH:$HOME/.local/bin"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# NOTES
#scp /path/to/file username@a:/path/to/destination

