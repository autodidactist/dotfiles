# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

bindkey -s '^o' 'lfcd\n'  # zsh


if [ "$_START_LFCD" ]; then
    unset _START_LFCD
    lfcd
fi
if [ "$_BRUNO_RUN_LF" ]; then
    unset _BRUNO_RUN_LF
    lfcd
fi

# Launch Ranger
bindkey -s "^N" 'ranger^M'

source "$XDG_CONFIG_HOME/zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"
source "$XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
#source "$XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"


export CARGO_HOME="$XDG_DATA_HOME"/cargo

autoload -U colors && colors

 PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt MENU_COMPLETE
# setopt no_list_ambiguous

#source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
# color for grep
export GREP_COLORS='ms=01;31'
# colors for man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[01;33m;'
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;2;32m'

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory

zstyle ':completion:*' menu select
zmodload zsh/complist
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# bindkey -M menuselect 'y' vi-yank-line

export KEYTIMEOUT=1

# Load zsh-syntax-highlighting; should be last.
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null


# Some colors

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Default Programs
EDITOR="/usr/bin/nvim"
# EDITOR="neovide"
BROWSER="/usr/bin/brave"
# Enables hidden files in autocompletion
_comp_options+=(globdots)

# Rehashing
zstyle ':completion:*' rehash true


# Anaconda to load
export PATH="/home/shahid/anaconda3/bin:$PATH"
export PATH="/home/shahid/.npm-global/lib/node_modules/html-pdf/node_modules/phantomjs-prebuilt/lib/phantom/bin/:$PATH"

# Change cursor shape for different vi modes.
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
# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}


# Use lf to switch directories and bind it to ctrl-o
bindkey -s '^a' 'bc -l\n'

bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh
# Flutter

# export PATH="$PATH:/opt/flutter/bin"
# export _JAVA_AWT_WM_NONREPARENTING=1
# export ANDROID_HOME=/opt/android-sdk


killpicom(){

	pidof picom && pkill picom || picom -b
	zle reset-prompt; zle redisplay
}
# zle -N killpicom
bindkey "^b" killpicom


# Z.lua config
#eval "$(lua $HOME/.config/z.lua/z.lua --init zsh)"


LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

tmuxcd () {


	if [[ -z "$TMUX" ]] ;then
	    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
	    if [[ -z "$ID" ]] ;then # if not available create a new one
		tmux new-session
	    else
		tmux attach-session -t "$ID" # if available attach to it
	    fi
	fi
}

run_tmux(){
	tmux new-session
}

tmux_chek(){
	tmux_check
}

# zle -N run_tmux
# bindkey -s "^t" "run_tmux\n"

zle -N run_tmux
bindkey -s "^t" "tmux_check\n"

anaconda_env(){
	source /opt/anaconda/bin/activate root
}

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml


export QUTEWAL_DYNAMIC_LOADING=True
# export PYTHONPATH=$HOME/anaconda3/bin/python


# alias enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'


# export QT_DEVICE_PIXEL_RATIO=2
export QT_AUTO_SCREEN_SCALE_FACTOR=true

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/home/shahid/.local/share/gem/ruby/3.0.0/bin:$PATH"



rga-fzf() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	xdg-open "$file"
}
alias ls=exa

# export DENO_INSTALL="/home/shahid/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"
export GOPATH="$HOME/.local/share/go"
# export PATH="${PATSHOME}/bin:$PATH"
# export PATH="$HOME/go/bin:$PATH"
# export PATH="$HOME/opt/GNAT/2021/bin:$PATH"
# export PATH="$HOME/opt/crystal/bin:$PATH"
# export PATH="$HOME/opt/tinygo/bin:$PATH"
# export PATH="/home/shahid/opt/gdc/bin:$PATH"
# source ~/dlang/ldc-1.28.1/activate
export	PATH="/home/shahid/opt/v/:$PATH"
export	PATH="/home/shahid/opt/lean-4.0.0-linux/bin:$PATH"
# export JAVA_HOME="/usr/lib/jvm/openjdk17"
# export PATH="/home/shahid/opt/build/bin/:$PATH"
# export PATH="/home/shahid/opt/neovide/target/release:$PATH"
# export PATH="/home/shahid/opt/nvui/bin/:$PATH"
# _SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
# unset _JAVA_OPTIONS
# alias java='java "$_SILENT_JAVA_OPTIONS"'
eval $(opam env)

# export XDG_RUNTIME_DIR=/run/user/$UID
export HARDWARECLOCK=localtime
# eval $(starship init zsh)

# bun completions
# [ -s "/home/shahid/.bun/_bun" ] && source "/home/shahid/.bun/_bun"
# export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/opt/Odin:$PATH"
# export PATH="$HOME/opt/Lang/SwiftForth/bin/linux/:$PATH"
export PATH="$HOME/opt/Assembly/qbe-1.0/:$PATH"


eval "$(lua /home/shahid/dotfiles/.config/zsh/z.lua-1.8.16/z.lua --init zsh)"


export MANPATH="/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man:$MANPATH"


# Colors
default=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
purple=$(tput setaf 5)
orange=$(tput setaf 9)

# Less colors for man pages
export PAGER=less
# Begin blinking
export LESS_TERMCAP_mb=$red
# Begin bold
export LESS_TERMCAP_md=$orange
# End mode
export LESS_TERMCAP_me=$default
# End standout-mode
export LESS_TERMCAP_se=$default
# Begin standout-mode - info box
export LESS_TERMCAP_so=$purple
# End underline
export LESS_TERMCAP_ue=$default
# Begin underline
export LESS_TERMCAP_us=$green


export JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk/"

export PATH="/home/shahid/opt/scala3-3.2.1/bin:$PATH"
export PATH="/home/shahid/opt/Lang/SwiftForth/bin/linux:$PATH"
export  PATH="/home/shahid/.nitrile/bin:$PATH"
export PATH="/home/shahid/opt/Lang/typescript/bin:$PATH"
export PATH="/home/shahid/opt/Lang/Odin/:$PATH"


# export PATH="/home/shahid/opt/Janet/janet-v1.27.0-linux/bin/:$PATH"

# eval "$(starship init zsh)"
