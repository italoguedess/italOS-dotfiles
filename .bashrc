#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -l'
alias la='ls --color=auto -la'
PS1='[\u@\h \W]\$ '

alias v='nvim'
alias cl='clear && colorscript -r'
alias p="python"
alias cm="cmake $(pwd)"
alias m="make"
alias mm="make && ./main"
alias pv='pavucontrol'
alias gmd='gammastep -O 4000 &'
alias gmn='gammastep -O 3000 &'
alias gmx='killall gammastep'
alias sus='systemctl suspend'
alias reboot='sudo reboot now'
alias shutdown='sudo shutdown now'


colorscript -r

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/italo/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/italo/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/italo/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/italo/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

