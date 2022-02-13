# set vi mod for fish
fish_vi_key_bindings

# set default terminal editor to vim
set -Ux EDITOR vim

# disables fish greeting
set -g fish_greeting

# alias neofetch 'neofetch --source ~/Pictures/italOS.txt --disable shell wm de host'
# clears the terminal and executes neofetch again
alias fm6000 "perl ~/fetch-master-6000/fm6000.pl -c cyan -r"
alias cl 'clear && neofetch'

alias ls 'exa -l --icons'
alias la 'exa -la --icons'

alias tmr 'sh ~/.config/scripts/bash/timer.sh start'
alias tmrp 'sh ~/.config/scripts/bash/timer.sh togglePause'
alias tmr45 'sh ~/.config/scripts/bash/timer.sh start 45'

alias .vimrc 'nvim ~/.config/nvim/init.lua'

neofetch
