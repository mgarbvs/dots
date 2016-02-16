
autoload -U compinit promptinit colors
compinit
promptinit
colors
export GOPATH=$HOME/go
export GOROOT=/usr/lib/go
export GOBIN=$PATH:$GOROOT

for config (~/.zsh/*.zsh) source $config
#include "/home/michael/.colors/s3r0"

[[ -t 1 ]] || return
case $TERM in
    *xterm*|*rxvt*|(dt|k|E|a)term)
        preexec () {
            print -Pn "\e]2;$1\a"    # edited; %n@%m omitted, as I know who and where I am
        }
        ;;
esac


#█▓▒░ allow functions in the prompt
setopt PROMPT_SUBST
 
#█▓▒░ enable auto-execution of functions
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
#█▓▒░ prepend git functions needed for prompt
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'


setopt AUTO_CD
setopt CORRECT
setopt completealiases
setopt append_history
setopt share_history
setopt hist_verify
setopt hist_ignore_all_dups
export HISTFILE="${HOME}"/.zsh-history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[green]=$color[red]'
zstyle ':completion:*' menu select


function open() { xdg-open $1 &> /dev/null &disown; }
function lt() { ls -ltrsa "$@" | tail; }
function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
# Prompt
# local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"
##
# PROMPT='
# %~
# ${smiley}  %{$reset_color%}'
#
# RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(~/bin/git-cwd-info)%{$reset_color%}'

bindkey '^T' autosuggest-toggle

#accept suggestions without leaving insert mode
bindkey '^I' vi-forward-word
# or
# bindkey '^f' vi-forward-blank-word




# Load zsh-syntax-highlighting.
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# # Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh
#
 # Enable autosuggestions automatically.
# zle-line-init() {
#     zle autosuggest-start
#     }
#     zle -N zle-line-init


















# MUTT BG fix
COLORFGBG="default;default"

pathdirs=(
    ~/scripts
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done



source ~/.zplug/zplug
#export PATH="$PATH:$GOPATH/bin"
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
