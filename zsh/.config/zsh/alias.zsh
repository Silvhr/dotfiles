#!/bin/sh

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

electron_sucks() {
    # electron apps are slow and bloated
    # also im a nerd that uses wayland, and scaling on xwayland is broken on 1080p

    local app="$1"
    command $app --useOzonePlatform=wayland --enable-features=UseOzonePlatform --ozone-platform=wayland "$@"
}

# zathura_swallow() {
#     # zathura is a pdf reader that uses wayland
#     nohup zathura "$@" >/dev/null/ 2>&1 &
# }
z() {
    nohup zathura "$1" >/dev/null 2>&1 &
}

alias \
	nv="nvim"\
	grep="grep --color=auto"\
 	ls="ls -hNF --color=auto --group-directories-first"\
	mm="micromamba"\
	proj="cd ~/Projects"\
    dots="cd ~/dotfiles/"

# this should be set by zsh every time
case "$OSTYPE" in
        linux*)
                if [[ "$WSLENV" ]]; then
                        alias \
                        neo="/mnt/c/Program\ Files/Neovide/neovide.exe --wsl" \
                        cs="cd /mnt/c/Users/Silvhr/Documents/School/CSCE121/" \
                        pic="cd /mnt/c/Users/Silvhr/Pictures/"\
                        clip="clip.exe"\
                        notes="cd /mnt/c/Users/Silvhr/Documents/Obsidian-Backup/"\
                        dl="cd /mnt/c/Users/Silvhr/Downloads/"\
                        paste="powershell.exe Get-Clipboard | sed 's/\r//'"
                else
                        #arch
                        alias \
                        ...="devour"\
                        ff="... firefox; exit"\
                        pp="... firefox --private-window;exit"\
                        todo="... firefox --new-tab https://todoist.com/app/today; exit"\
                        speed="... firefox --new-tab https://play.typeracer.com/; exit"\
                        doc="cd ~/Documents/"\
                        ihateelectron='electron_sucks'\
                        die="cd ~/Documents/VeryRare/"\
                        suggest="gh copilot suggest"\
                        chrome="google-chrome-stable"\
                        firefox="firefox-developer-edition"
                        # z="zathura_swallow"\
                        # tboi="cd .local/share/Steam/steamapps/compatdata/250900/pfx/drive_c/users/steamuser/Documents/My\ Games/Binding\ of\ Isaac\ Repentance/"
                        # bottles="... flatpak run com.usebottles.bottles"\
                fi
        ;;
        darwin*)
        ;;
        dragonfly*|freebsd*|netbsd*|openbsd*)
        ;;
esac
