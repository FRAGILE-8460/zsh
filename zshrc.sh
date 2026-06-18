export EDITOR=vim
export LANG=ja_JP.UTF-8

# Colors
autoload -Uz colors
colors

# Completion
autoload -Uz compinit
compinit

# Spell correction
setopt correct

# Vim keybindings
bindkey -v

#-------------------------
# Git prompt
#-------------------------
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=(precmd_vcs_info)
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b%c%u'
zstyle ':vcs_info:git:*' actionformats '%b%c%u'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '+'

#-------------------------
# History
#-------------------------
if [ ! -d "$HOME/log" ]; then
    mkdir -p "$HOME/log"
fi
HISTFILE=$HOME/log/zsh-history
HISTSIZE=100000
SAVEHIST=1000000
setopt histignorealldups
setopt share_history  # inc_append_history を内包するため、こちらのみ設定

alias h='fc -lt "%F %T" 1'

#-------------------------
# Plugins
#-------------------------
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#-------------------------
# Prompt
#-------------------------
RED='%F{red}'
GREEN='%F{green}'
YELLOW='%F{yellow}'
BLUE='%F{blue}'
RESET='%f'

ENVIRONMENT="MacMini"
export PS1="${GREEN}%n${RESET}@${BLUE}%m${RESET} ${YELLOW}${ENVIRONMENT}${RESET} [%~] %# "

#-------------------------
# 1Password CLI
#-------------------------
eval "$(op completion zsh)"; compdef _op op
source ~/.config/op/plugins.sh

# Added by Antigravity CLI installer
export PATH="/Users/takashi/.local/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/takashi/.antigravity-ide/antigravity-ide/bin:$PATH"
