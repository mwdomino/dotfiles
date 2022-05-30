# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

#if [ -f `which powerline-daemon` ]; then
#	powerline-daemon -q
#	. /usr/share/powerline/zsh/powerline.zsh
#fi

export EDITOR='emacsclient -t'
export VISUAL='emacsclient -t'
export PATH=~/go/bin:/usr/local/go/bin:$PATH
export FPATH=/home/matt/.zsh/completions:$FPATH
export GOPROXY=direct
export GOPRIVATE=github.com/packethost/*
export BAT_THEME=Dracula
#source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias e="$EDITOR"
alias ls='ls --color=auto'
alias kc='kubectl'
alias setbg='feh --bg-fill /home/matt/Pictures/wallpaper.jpg'
alias dock='autorandr --load docked && setbg'
alias undock='autorandr --load mobile && setbg'
alias gor='go run *.go'
alias t="tmux new -s $(basename $PWD)"
alias wiggle="keep-presence -s 30"
alias no="sudo killall"
alias glog="git log --color --oneline --graph"
# k8s
source ~/.ktx

# asdf
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
fpath+=$HOME/.zsh/pure

# initialise completions with ZSH's compinit
autoload -U promptinit; promptinit
prompt pure
autoload -Uz compinit && compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# history
#setopt inc_append_history
setopt share_history
