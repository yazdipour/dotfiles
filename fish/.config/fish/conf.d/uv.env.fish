source "$HOME/.local/bin/env.fish"
fish_add_path /opt/homebrew/bin

# Add your existing paths
fish_add_path "$HOME/.config/bin"
fish_add_path "$HOME/.bun/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/.cargo/bin"
set -Ux GOPATH (go env GOPATH)
fish_add_path $GOPATH/bin