if [ -f "$HOME/ZSH/.secrets" ]; then
    source "$HOME/ZSH/.secrets"
fi

source "$HOME/ZSH/zpath.sh"

# OrbStack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :


# Added by Antigravity CLI installer
export PATH="/Users/takashi/.local/bin:$PATH"
