#!/bin/zsh

# ~/ Clean-up:
export DISPLAY="0.0"
export XDG_CONFIG_HOME="$HOME/.config"
export MANPATH="/usr/local/man:$MANPATH"
export R_LIBS_USER="$HOME/R/x86_64-pc-linux-gnu-library/4.0"
export TEXMFHOME="$HOME/texmf"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
# export XDG_RUNTIME_DIR="$HOME/.cache/xdgr:$PATH"
export EDITOR="nvim"
export LIBVA_DRIVER_NAME=nouveau
export PATH="/home/shahid/opt/zig-linux-x86_64-0.9.1:$PATH"
export LIBVA_DRIVER_NAME=iHD
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export SUDO_ASKPASS="$HOME/.local/bin/pass.sh"
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/.gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export TERMINAL="alacritty"
# export TERMINAL="st"
export BROWSER="brave"
export READER="zathura"
# export QT_AUTO_SCREEN_SCALE_FACTOR=1
# export QT_SCREEN_SCALE_FACTORS=96
# export QT_FONT_DPI=96 vym
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="/home/shahid/.local/share/cargo/bin:$PATH"
export PATH="/home/shahid/.mix/escripts/:$PATH"
export PATH="/home/shahid/anaconda3/bin:$PATH"
export PATH="/home/shahid/opt/goneovim-linux:$PATH"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export QT_QPA_PLATFORMTHEME="qt5ct"

export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GOBIN="${XDG_DATA_HOME:-$HOME/.local/share}/go/bin"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/lib/go
export PATH=~/.npm-global/bin:$PATH

# This is the list for lf icons:
# export LF_ICONS="\
# di=📁:\
# fi=📃:\
# tw=🤝:\
# ow=:\
# ex=🎯:\
# *.txt=✍:\
# *.mom=✍:\
# *.me=✍:\
# *.ms=✍:\
# *.png=🖼:\
# *.webp=🖼:\
# *.ico=🖼:\
# *.jpg=📸:\
# *.jpe=📸:\
# *.jpeg=📸:\
# *.gif=🖼:\
# ln=:\
# or=:\
# ex=:\
# *.vimrc=:\
# *.viminfo=:\
# *.gitignore=:\
# *.c=:\
# *.cc=:\
# *.pest= :\
# *.clj=:\
# *.coffee=:\
# *.cpp=:\
# *.d=:\
# *.dart=:\
# *.erl=:\
# *.exs=:\
# *.ex=:\
# *.fs=:\
# *.go=:\
# *.h=:\
# *.hh=:\
# *.hpp=:\
# *.hs=:\
# *.html=:\
# *.java=:\
# *.jl=:\
# *.js=:\
# *.json=:\
# *.lua=:\
# *.md=:\
# *.php=:\
# *.pl=:\
# *.pro=:\
# *.py=:\
# *.rb=:\
# *.rs=:\
# *.scala=:\
# *.ts=:\
# *.vim=:\
# *.nix=:\
# *.xml=📰:\
# *.gpg=🔒:\
# *.css=🎨:\
# *.pdf=📚:\
# *.djvu=📚:\
# *.epub=📚:\
# *.csv=📓:\
# *.xlsx=📓:\
# *.tex=📜:\
# *.md=📘:\
# *.r=📊:\
# *.R=📊:\
# *.rmd=📊:\
# *.Rmd=📊:\
# *.m=📊:\
# *.m4a=🎵:\
# *.flac=🎼:\
# *.mkv=🎥:\
# *.mp4=🎥:\
# *.webm=🎥:\
# *.mpeg=🎥:\
# *.avi=🎥:\
# *.zip=📦:\
# *.1=ℹ:\
# *.nfo=ℹ:\
# *.info=ℹ:\
# *.log=📙:\
# *.iso=📀:\
# *.img=📀:\
# *.bib=🎓:\
# *.ged=👪:\
# *.part=💔:\
# *.torrent=🔽:\
# *.jar=♨:\
# "
alias ls=exa
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi
