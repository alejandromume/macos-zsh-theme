ll=$(last -1 -R  $USER | head -1 | cut -c 23-)
echo "Last Login: $ll"
export PS1="Last Login: [$ll]"'\n\h:\W\$ '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

git_prompt() {
   echo "$(git_prompt_info)"
}

PROMPT='%{$fg[white]%}%m:%1~ %n$ '
# RPROMPT='%{$FG[012]%} ► %{$fg[cyan]%}$(git_prompt_info)%{$FG[012]%} ◄ %{$reset_color%}';

RPROMPT='$(git_prompt)'



