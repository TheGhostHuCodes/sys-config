# Uses the macOS `security` command-line tool to get secrets.
function get_secret --argument service_name
    security find-generic-password -a (whoami) -s "$service_name" -w
end

# Enable vi-mode globally.
fish_vi_key_bindings

set -x GEMINI_API_KEY (get_secret "gemini-api-key")

# XDG-compliance; This is the Way.
set -x XDG_CONFIG_HOME "$HOME/.config"
# Set `eza` to be XDG-compliant on macOS, otherwise it will look in
# `~Library/Application Support/eza`.
set -x EZA_CONFIG_DIR "$HOME/.config/eza/"
# Set `readline` to be XDG-compliant on macOS, otherwise it will look for the
# file `~/.inputrc`.
set -x INPUTRC "$HOME/.config/readline/inputrc"

# Use starship prompt.
starship init fish | source