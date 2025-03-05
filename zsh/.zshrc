
# Source profile file
source ~/.shared_profile

# Source common aliases
source ~/.shared_aliases

alias ta='sesh connect "$(sesh list | fzf-tmux)"'

# --- ENV ---
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# ANTIGEN
export DISABLE_UNTRACKED_FILES_DIRTY="true" # disable dirty check for git repo to speed up zsh
export ANTIGEN="$HOME/.config/antigen/.antigenrc" # antigen - if fckd? rm -rf ~/.antigen/ 
rm ~/.antigen/.lock -f
source ~/.config/antigen/antigen.zsh
antigen init $ANTIGEN

# AWS STUFF
export AWS_CONFIG_PATH=$HOME/.aws
export AWS_PROFILE=saml
export AWS_REGION=us-east-1

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
bindkey -s '^p' "sesh connect \$(sesh list | fzf-tmux)\\n"
bindkey -s '^f' "v ^t"

# -- eval ---
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
# eval "$(gh copilot alias -- zsh)"

# HIST
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
