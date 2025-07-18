# General
# export BROWSER=firefox
export EDITOR=nvim
export TERMINAL=kitty

export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export HISTFILE="$XDG_STATE_HOME"/zsh/.history
# export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
# export NVM_DIR="$XDG_DATA_HOME"/nvm
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export CARGO_HOME="$XDG_DATA_HOME"/CARGO_HOME
export SSH_ASKPASS=/usr/lib/openssh/gnome-ssh-askpass
# export DISPLAY=:0

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
path+=$CARGO_HOME/bin
export PATH="~/miniconda3/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
export PATH="$HOME/fvm/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:/usr/bin/chromedriver
# source /usr/share/nvm/init-nvm.sh

#flutter development
export ANDROID_HOME=$HOME/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
