export		EDITOR=vim				#エディタはVim
export		LANG=ja_JP.UTF-8		#文字コードはUTF-8

# 色を設定
autoload	-Uz colors
colors

# 補完設定
autoload 	-Uz compinit
compinit

#コマンドミスを指摘
setopt		correct

#Vim キーバインド
bindkey		-v

#GIT拡張
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

# プロンプト変更
# PROMPT='%{$fg[cyan]%}%n@%m%{$reset_color%} [%c] : '


#-------------------------
# 履歴
#-------------------------
HISTFILE=$HOME/log/zsh-history
HISTSIZE=100000
SAVEHIST=1000000

#ヒストリーに重複を表示しない
setopt		histignorealldups

#ほかのターミナルとヒストリーを共有
setopt		share_history

# historyに日付を表示
alias 		h='fc -lt '%F %T' 1'

# 履歴をすぐに追加する
setopt 		inc_append_history

#-----------------------
#プラグイン設定
#-----------------------
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ANSIエスケープコード
RED='%F{red}'       # 赤色
GREEN='%F{green}'   # 緑色
YELLOW='%F{yellow}' # 黄色
BLUE='%F{blue}'     # 青色
RESET='%f'          # 色のリセット

# 任意の文字列 (例: 環境名や注意書き)
ENVIRONMENT="MacMini"

# PS1設定: 任意の文字列を追加
export PS1="${GREEN}%n${RESET}@${BLUE}%m${RESET} ${YELLOW}${ENVIRONMENT}${RESET} [%~] %# "

export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin

export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/takashi/.docker/completions $fpath)
# End of Docker CLI completions
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
