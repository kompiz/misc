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
alias k="kubectl"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kns="kubens"
alias kctx="kubectx"
alias ..="cd .."

# Make a fancy prompt with parse_git_branch()
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Check if tmux is running, if it is, attach 
if [ -z "$TMUX" ]; then
  exec tmux attach || tmux 
fi
