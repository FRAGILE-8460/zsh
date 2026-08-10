# path/fpath の重複を自動排除
typeset -U path fpath

# PATH (上に追加するほど優先度が高い)
path=(
  /opt/homebrew/sbin
  /opt/homebrew/bin
  /opt/homebrew/opt/llvm/bin
  $HOME/tools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi/bin
  $HOME/.local/bin
  $HOME/.antigravity-ide/antigravity-ide/bin
  $path
)

# fpath (下に追加するほど優先度が高い)
fpath=(
  $HOME/.docker/completions
  $fpath
)

# STM32
export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources
