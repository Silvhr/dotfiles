#!/bin/sh

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"


alias \
	nv="nvim"\
	grep="grep --color=auto"\
 	ls="ls -hNF --color=auto --group-directories-first"\
	proj="cd ~/Projects"\
        dots="cd ~/dotfiles/"

#not a good solution but whatever
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
        alias \
	...="devour"\
	ff="... firefox; exit"\
	pp="... firefox --private-window;exit"\
        todo="... firefox --new-tab https://todoist.com/app/today; exit"\
        speed="... firefox --new-tab https://play.typeracer.com/; exit"\
        doc="cd ~/Documents/"\
	z="... zathura"\
	die="cd ~/Documents/VeryRare/"\
        bottles="... flatpak run com.usebottles.bottles"
fi
