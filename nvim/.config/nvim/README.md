#nvim
1. install nvim (pacman)
2. install packer-git (aur)
3. stow repo
4. Open nvim, PackerSync
5. Let treesitter install
6. install LSP servers
-- install unzip for sumenko and npm 
-- install clang
-- install nvm and npm for tsserver (add source file to zsh/bash file)
7. do `:Copilot setup` for GH Copilot.

##Note for future me
if upon exit you get this error:
```shell
.local/state/nvim/shada/main.shada.tmp.X
```
do:
```
rm -rf ~/.local/state/nvim/shada/main*
```
###TODO
bracey.vim
configure GH copilot
firenvim autocmd to write [automatically](https://github.com/glacambre/firenvim#automatically-syncing-changes-to-the-page)
potentially [remove](https://vi.stackexchange.com/questions/9570/how-do-i-shadont) files?
