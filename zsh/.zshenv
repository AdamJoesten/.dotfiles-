source "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
source "$HOME/.asdf/plugins/java/set-java-home.zsh"

source "$HOME/.cargo/env"

export PICO_SDK_PATH="$HOME/pi/pico/pico-sdk/"
export OPENOCD_HOME="$HOME/.local/opt/openocd"
