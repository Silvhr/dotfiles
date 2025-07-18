[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
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

# source ~/.config/zshrc.d/dots-hyprland.zsh

# # Enable colors and change prompt:
# autoload -U colors && colors	# Load colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
# # stty stop undef		# Disable ctrl-s to freeze terminal.
# setopt interactive_comments

#Load aliases and source other files related to zsh

#my personal files
plug "$HOME/.config/zsh/alias.zsh"
plug "$HOME/.config/zsh/env.zsh"

#p10k
# plug "romkatv/powerlevel10k"

#other plugs
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/supercharge"
plug "zap-zsh/completions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/vim"
plug "MichaelAquilina/zsh-you-should-use"
plug "chivalryq/zsh-autojump"

plug "zap-zsh/fzf"
plug "Aloxaf/fzf-tab"
plug "Freed-Wu/fzf-tab-source"

# plug "wintermi/zsh-gcloud"
plug "wintermi/zsh-rust"
plug "MenkeTechnologies/zsh-cargo-completion"
# plug "wintermi/zsh-brew"
# plug "zap-zsh/nvm"
# plug "olrtg/zsh-fvm"
# plug "chrishrb/zsh-kubectl"

plug "zap-zsh/exa"
plug "zap-zsh/fnm"

#remove compdump

HISTSIZE=10000
SAVEHIST=10000
unsetopt beep

# Basic auto/tab complete:
autoload -U compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zshrc.d/dots-hyprland.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
path+=('/home/silvhr/.local/share/CARGO_HOME/bin/')
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/usr/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/silvhr/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# pnpm
export PNPM_HOME="/home/silvhr/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/silvhr/.config/.dart-cli-completion/zsh-config.zsh ]] && . /home/silvhr/.config/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

