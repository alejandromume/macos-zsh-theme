ll=$(last -1 -R $USER | awk 'NR==1 {print $4, $3, $5, strftime("%T"), "on", $2}')
echo "Last login: $ll"
export PS1="Last login: [$ll]"'\n\h:\W\$ '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

git_prompt() {
   echo "$(git_prompt_info)"
}

PROMPT='%n@%m %1~ %% '
# RPROMPT='%{$FG[012]%} ► %{$fg[cyan]%}$(git_prompt_info)%{$FG[012]%} ◄ %{$reset_color%}';

RPROMPT='$(git_prompt)'
