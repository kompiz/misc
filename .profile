# Don't print the zsh warning in macos terminal 
export BASH_SILENCE_DEPRECATION_WARNING=1

# Add colors to macos terminal
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Grep defaults
export GREP_OPTIONS='--color=auto'

# Activate bash completion if possible
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

complete -F __start_kubectl k
complete -F _multipass_complete mp

source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.

# Aliases
alias ll="ls -al"
alias mp="multipass"

# Check if tmux is running, if it is, attach 
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux attach
fi

