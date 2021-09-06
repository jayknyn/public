export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jax"

export UPDATE_ZSH_DAYS=90

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

cd /opt

alias dps='docker ps -a'
alias dps2='docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Image}}" | (read -r; printf "%s\n" "$REPLY"; sort -k 1 )'
alias dpsp='docker ps -a --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}\t{{.Size}}\t{{.Image}}" | (read -r; printf "%s\n" "$REPLY"; sort -k 1 )'
alias di='docker images -a'
alias dstop='docker stop $(docker ps -a -q)'
alias drm='docker rm $(docker ps -a -q)'
alias dirm='docker rmi $(docker images -a -q)'

alias dcc='docker-compose config'
alias dcu='docker-compose up -d'
alias dcul='docker-compose up -d && docker-compose logs -f'
alias dcd='docker-compose down'
alias ddu='dcd && dcu'
alias dcb='docker-compose build'
alias dl='docker logs --follow'
alias dcl='docker-compose logs -f'

alias dv='docker volume ls'
alias dvr='docker volume rm $(docker volume ls -q)'
alias stats='docker ps -q | xargs docker stats --no-stream'

alias vdc='vim docker-compose.yml'
alias rdc='rm docker-compose.yml'

alias ip='curl https://ipinfo.io'
alias reload='source ~/.zshrc'
alias duh1='sudo du -h --max-depth=1'
alias fw='sudo ufw status | grep ALLOW'
alias md='mkdir -p'

alias ssr='sudo systemctl restart'
alias sss='sudo systemctl status'

alias gc='git clone'
alias gacm='git add-commit -m'
alias gs='git status'
alias gcem='git commit --allow-empty -m'
alias gpo='git push origin'

alias l='ls -laFh --color=auto' #l=long list, a=show starting with . (hidden), h=human readable sizes
alias la='ls -lAFh --color=auto' #A=list all hidden except . and ..
alias ll='ls -lFh --color=auto' #long list and human readable sizes, no hidden
alias ls='ls -G --color=auto' # ls - TAB for all varibales
# l='ls -lah'
# la='ls -lAh'
# ll='ls -lh'
# ls='ls --color=tty'
# lsa='ls -lah'

#from zsh
#alias ..='cd ..'
#alias cd='cd ~'
#alias /='cd /'