# Source common aliases
source ~/.aliases

# Source profile file
source ~/.profile

# --- ENV ---
export EDITOR=nvim
export HOMEBREW_EDITOR=nvim
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
eval "$(gh copilot alias -- zsh)"

# HIST
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
