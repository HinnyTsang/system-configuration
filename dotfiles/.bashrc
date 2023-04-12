# Show git branch on the bash terminal
parse_git_branch() {
     git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Source nix.sh
source "$HOME/.nix-profile/etc/profile.d/nix.sh"

# Activate direnv
eval "$(direnv hook bash)"

# Default use zsh as shell
exec zsh
