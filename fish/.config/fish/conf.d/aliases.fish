function lzv
    nvim --cmd 'set runtimepath+=~/.config/nvim-lazy' -u ~/.config/nvim-lazy/init.lua
end 
alias lzg='lazygit'
alias lzd='lazydocker'
# Config aliases
alias editt='$EDITOR ~/.tmux.conf'
alias editv='$EDITOR ~/.config/nvim/'
alias editp='$EDITOR ~/.config/fish/; source ~/.config/fish/config.fish'

# OS aliases
alias q='exit'
alias cls='clear'
alias l='lsd -laF'
alias la='lsd -A'
alias ll='lsd -alF'
alias lt='lsd --tree'
alias ltt='lsd -alF --tree'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias pt='procs --tree'
alias pw='procs --watch'
alias wport='netstat -ltnp'
alias sizedir='du -shc ./*'
alias cat='bat --style=plain'

# Utility aliases
alias about='neofetch'
alias version='lsb_release -a'
alias p1='ping 1.1.1.1'
alias debi='sudo dpkg -i'
alias grep='rg'
alias uziptar='tar -xzf'
alias dif='diff -yZB'
alias dl='aria2c'
alias v='nvim'
alias y='yazi'

# Tmux aliases
alias t='tmux'
alias ta='sesh connect (sesh list | fzf-tmux)'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t'
alias ts='tmux switch -t'

# Git aliases
alias gitc='git clone'
alias gits='git status'
alias gitpull='git pull origin'
alias gitma='git commit -a -m'
alias gitp='git push origin'
alias granch='git branch'
alias gitch='git checkout'
alias gitdf='git diff'
alias gitd='git diff HEAD~'
alias gita='git add'
alias gitm='git commit -m'
alias gitl='git log --graph --oneline --decorate'
alias gitundo='git reset --soft HEAD~1'
alias gitempty='git commit --allow-empty -m "fix: Trigger rebuild"'

# Docker aliases
alias dcsall='docker stop (docker ps -q)'
alias dcrmall='docker rm (docker ps -q)'
alias dc='docker-compose'
alias dcu='docker-compose up dependencies'
alias dcs='docker-compose stop'
function dcf
    docker compose -f $argv up
end
