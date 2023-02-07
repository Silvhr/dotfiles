# pfetch (here because of weird interaction with p10k
export PF_SEP=""
export PF_INFO="ascii title os kernel wm editor shell uptime pkgs memory palette"
pfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# # Enable colors and change prompt:
# autoload -U colors && colors	# Load colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
# # stty stop undef		# Disable ctrl-s to freeze terminal.
# setopt interactive_comments

#Load aliases and source other files related to zsh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/.zshenv" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/.zshenv"



#remove compdump

HISTSIZE=10000
SAVEHIST=10000
unsetopt beep

#vi mode
bindkey -v
export KEYTIMEOUT=1

#Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
precmd() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Basic auto/tab complete:
autoload -U compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

path+=('/home/silvhr/.local/share/CARGO_HOME/bin/')
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
