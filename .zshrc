export ZSH="$HOME/.oh-my-zsh"
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
#remove duplication in history
export HISTCONTROL=ignoreboth

alias editrepo='sudo vi /etc/apt/sources.list'
alias editrc='sudo vi ~/.zshrc'
alias edittmux='sudo vi ~/.tmux.conf'

# Suffix
alias -s {md,txt,js,css,html,htm,c,cpp}=vi
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

# WSL
function x() {"export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | head -1 | awk '{print $2}'):0"}
alias x1='export DISPLAY=:0'

# python
alias py='python'
alias pip3='sudo /usr/bin/pip3'

# Stuff
function scphelp() {echo 'scp /path/to/file username@a:/path/to/destination'}
function cd { builtin cd "$@" && ls }
alias la='ls -A'
alias ll='ls -alF'
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias cls='clear'
alias p1='ping 1.1.1.1'
alias about='neofetch'
alias version='lsb_release -a'
alias installdeb='sudo dpkg -i'
alias tor='tor --HTTPTunnelPort 8118'
alias c='code'
alias cr='code -r'
alias hx='hexcurse'
alias uzip='tar -xzf'
alias dif='diff -yZB'

# PATH
export PATH="$PATH:$HOME/.local/bin"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

