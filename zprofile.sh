if [ -f "$HOME/ZSH/.secrets" ]; then
    source "$HOME/ZSH/.secrets"
fi

export PATH="$PATH:/Users/takashi/tools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi/bin"