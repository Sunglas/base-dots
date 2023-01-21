[ -w "/home/void/.bash_logout" ] && \
  rm "/home/void/.bash_logout"

[ -s "/home/void/.lyrics" ] && \
  rm -rf "/home/void/.lyrics"

[ -w "/home/void/.gmrun_history" ] && \
  rm "/home/void/.gmrun_history"

[ -w "/home/void/.gnuplot_history" ] && \
  rm "/home/void/.gnuplot_history"

[ -w "/home/void/.python_history" ] && \
  rm "/home/void/.python_history"

[ -w "/home/void/neovide_backtraces.log" ] && 
  rm "/home/void/neovide_backtraces.log"

[ -w "/home/void/.bash_history" ] && \
  rm "/home/void/.bash_history"

[ -s "/home/void/.avidemux6" ] && \
  rm -rf "/home/void/.avidemux6"

EDIDTOR="swallow neovide --multigrid --nofork"

alias zathura="zathura --fork"
alias cck="$EDIDTOR $HOME/.config/i3/keymap.config"
alias cci="$EDIDTOR $HOME/.config/i3/config"
alias ccz="$EDIDTOR $HOME/.zshrc"
alias ccki="$EDIDTOR $HOME/.config/kitty/kitty.conf"
alias cco="find $HOME/.config | fzf | xargs $EDIDTOR"
alias radio="mpv --no-video"
alias w3m="w3m -v"
alias fucking="doas"
alias ytd="yt-dlp --config $HOME/.config/yt-dlp_config"
alias xrs="xmonad --recompile && xmonad --restart"
alias spotd="spotifyd -B 320 -d Toilet -u 'dsciencekid' -P 'pass show spotify'"
alias ex="exa --icons -a --group-directories-first"
alias grep="grep --color=auto"
alias dv="doas $EDIDTOR"
alias FUCKING="doas"
alias gc="git clone"
alias wiki="$EDIDTOR -- -c VimwikiIndex"

cl() {
    cd "$@" && exa -a --icons --group-directories-first
}

mkcd() { 
    mkdir -p "$@" && cd "$@" || exit
}

v() {
    swallow neovide --multigrid --nofork "$@"
}

mktex() { 
    cp "$HOME/Documents/LaTex/template.tex" "$(pwd)/$*.tex"
}

mdf() {
    pandoc "$@" -o "$*.pdf" --pdf-engine=xelatex
}


"$HOME"/Scripts/shell/ascii.sh
#$HOME/.bin/prompt
#$HOME/Scripts/apl/prompt.apl
#$HOME/Scripts/shell/prompt.sh
#PROMPT='%F{blue}%(?.> .%F{red}%? > %f)%f'
#RPROMPT='%F{red}%~%f'

eval "$(starship init zsh)"
