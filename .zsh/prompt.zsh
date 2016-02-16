
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

#ono
#PROMPT="%{${fg[magenta]}%}%B%~ "

#minimalist xero
#PROMPT='${USER_LEVEL} [%F{white}%~${USER_LEVEL}]$(info)── -%f '
#PROMPT='%F{cyan}${USER_LEVEL}[%F{white}%~${USER_LEVEL}%F{cyan}]%F{cyan}$(info)── -%f '
#custom
#PROMPT='%F{black} ${USER_LEVEL} [%F{black}%~${USER_LEVEL}]$(info)%f '

#arrow
PROMPT="
%{$fg[red]%} »  %{$reset_color%}"
#PROMPT="
#%{$fg[red]%} >  %{$reset_color%}"
RPROMPT="%B%{$fg[black]%}%~%{$reset_color%}"



#█▓▒░dual line prompt
#PROMPT='${USER_LEVEL}┌[%F{white}%n@%M${USER_LEVEL}]─[%F{white}%~${USER_LEVEL}]$(info)
#${USER_LEVEL}└─ - %F{white}'





#PROMPT='%F{white}        ▟▙  ${USER_LEVEL}%~%F{white}$(info) %F{white}
#▟▒${USER_LEVEL}░░░░░░░%F{white}▜▙▜████████████████████████████████▛
#▜▒${USER_LEVEL}░░░░░░░%F{white}▟▛▟▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▛
#        ▜▛
#            %F{white}'





## Functions
function ssh_state {
    if [ -n "$SSh_CONNECTION" ]; then
        echo "%{$fg[red]%}<%{$fg[white]%}SSH%{$fg[red]%}> "
    fi
}
#
function collapse_pwd {
    if [[ $(pwd) == $HOME ]]; then
        echo $(pwd)
    else
        echo $(pwd | sed -e "s,^$HOME,~,")
    fi
}

function error_code {
 if [[ $? == 0 ]]; then
        echo ""
    else
        echo "%{$fg[white]%}<%{$fg[red]%}%?%{$fg[white]%}>%{$reset_color%}"
fi
}

last_command='%(?.>>.<<)'


##Butter
#PROMPT='
#  %{$fg[red]%}<%{$fg[white]%}$(collapse_pwd)%{$fg[red]%}> $(ssh_state)
#%{$fg[white]%}$last_command%{$reset_color%} '

#RPROMPT='$(error_code)%{$reset_color%}
#
#
#
#
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}{"
#ZSH_THEME_GIT_PROMPT_SUFFIX="}%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} *%{$fg[blue]%}"
#
#PROMPT='%{$(info)%} %{$fg[green]%}%D{{%I:%M}} %{$reset_color%}%{$fg[cyan]%}{%~}%{$reset_color%}
#%{$fg[blue]%}<%{$reset_color%}%{$fg[red]%}*%{$reset_color%}%{$fg[blue]%}>%{$reset_color%} '


# Left Prompt
# PROMPT='%F{cyan}%D{%a,}%F{yellow}%D{%d.%m} %F{white}%T%f $(vcs_info && echo $vcs_info_msg_0_)'\
#     '%(!.%F{red}.%F{green})%34<…<%~ %f'\
#     '%(!.%(?.$white_root.$red_root).%(?.$white_user.$red_user) )'
#
# # Right Prompt
# RPROMPT='%(?.%F{yellow}%1v.$ret1)%f'
#
# # Redraw Prompt every second
# _prompt_and_resched() { sched +60 _prompt_and_resched; zle && zle reset-prompt }
# _prompt_and_resched>>

#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%n%{$fg[cyan]%}@%{$fg_bold[green]%}%m %{$fg_bold[green]%}%p %{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

#ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


