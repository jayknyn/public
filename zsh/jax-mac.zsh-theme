PROMPT='%(!.%{%F{green}%}.)%{$fg[green]%}%n@%{$fg[green]%}%M%{$fg_bold[red]%}➜%{$fg_bold[yellow]%}%p%{$fg[026]%}%d%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} [%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"

# colors: red, blue, green, cyan, yellow, magenta, black, & white