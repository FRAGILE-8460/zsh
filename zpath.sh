# zpath.sh

# PATH
# Zshのpath配列を使うと、より安全で管理がしやすい
# 上に追加するほど、優先的に使われる
path=(
  /opt/homebrew/sbin
  /opt/homebrew/bin
  /opt/homebrew/opt/llvm/bin
  /Users/takashi/tools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi/bin
  $path # 既存のPATHを引き継ぐ
)

# fpath (補完関数のパス)
# 下に追加するほど、優先的に使われる
fpath=(
  /Users/takashi/.docker/completions
  $fpath # 既存のfpathを引き継ぐ
)

# STM32
export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources
