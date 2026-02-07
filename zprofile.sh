if [ -f "$HOME/ZSH/.secrets" ]; then
    source "$HOME/ZSH/.secrets"
fi

# PATH設定はzpath.shに分離
source "$HOME/ZSH/zpath.sh"