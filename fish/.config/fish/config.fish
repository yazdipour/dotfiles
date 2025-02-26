# Core environment variables
set -gx EDITOR nvim
set -gx HOMEBREW_EDITOR nvim

if status is-interactive
    set -U fish_greeting # disable fish greeting

    # Commands to run in interactive sessions can go here
    zoxide init fish | source

    # FZF configurations from your existing setup
    set -gx FZF_CTRL_R_OPTS "--preview 'echo {}' --preview-window up:3:hidden:wrap --bind 'ctrl-/:toggle-preview' --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort' --color header:italic --header 'Press CTRL-Y to copy command into clipboard'"
    set -gx FZF_CTRL_T_OPTS "--preview 'bat -n --color=always {}'"
    set -gx FZF_ALT_C_OPTS "--walker-skip .git,node_modules,target --preview 'tree -C {}'"
end

