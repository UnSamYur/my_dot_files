# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.local/bin/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases start
alias ls='exa -1 --icons'
alias ..='cd ..'
alias p='ipython'
alias r='ranger'
alias cal='ncal -bM'
alias cp='cp -iv'
alias hdd='df -h | grep -e Filesystem -e /dev/sda5'
alias sdn='shutdown -h now'
alias upd='sudo apt update && sudo apt upgrade -y'
alias vb='vim ~/.bashrc'
alias vz='vim ~/.zshrc'
alias vt='vimtutor'
alias temp='cd ~/.vim/templates'
alias sty='cd ~/Sites'
alias cpp='cd ~/Programming/c++'
alias ly='ls'
alias b='bash'
alias z='zsh'
alias pt='python3.10'
alias pmg='python3 myGame.py'
alias ptn='cd ~/Programming/python'
alias pasc='cd ~/Programming/pascal'
alias ccc='cd ~/Programming/c'
alias cs='cd ~/Programming/c#'
alias frt='cd ~/Programming/fortran'
alias yc='yad --color'
alias dt='date'
alias asm='cd ~/Programming/assembler'
alias tau='cd ~/Programming/c++/Tau'
alias ptn='cd ~/Programming/python'
alias bsh='cd ~/Programming/bash'
alias jav='cd ~/Programming/java'
alias open='xdg-open'
alias c='clear'
alias pr='cd ~/Programming'
alias langs='./.programmLangs.sh'
alias vrc='vim ~/.vim/vimrc'
alias nrc='nano ~/.nanorc'
alias nv='nvim'
alias v='vim'
alias n='nano'
alias m='micro'
alias ывт='shutdown -h now'
alias к='ranger'
alias wsass='sass --watch main.sass:main.css'
alias gi='cd ~/GUI'
alias gc='gcc `pkg-config --cflags --libs gtk+-3.0` '
alias gcp='g++ `pkg-config --cflags --libs gtk+-3.0` '
alias vf='vim "$(fzf --preview="bat --color=always --style=plain {}" --bind K:preview-up,J:preview-down --prompt "Please select a file to edit: ")"'
# Alias end

[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# Set vi mode
set -o vi

#Rust.
export PATH="$HOME/.cargo/bin:$PATH" 

#julia
#export PATH="$PATH:/home/yura/julia-1.8.1/bin"

#swift
export PATH="$HOME/swift-5.7.3-RELEASE-ubuntu18.04/usr/bin:$PATH"

#Default editor is vim
export EDITOR=`which vim`
