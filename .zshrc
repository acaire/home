# Manage home directory
alias config='/usr/bin/git --git-dir=$HOME/.home/ --work-tree=$HOME'

# source alias configs from ~/.zshrc.d
if [ -d ~/.zshrc.d ]; then
  for file in ~/.zshrc.d/***/*.zsh; do
    source $file
  done
fi

export EDITOR='vim'
export GOPATH=$HOME/go
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

function sshr {
  ssh $(ec2host -s "$1" | head -1)
}

# misc
alias exifrm='exiftool -all= '
alias gitz='git stash; git pl; git push; git stash pop'
alias ip='curl wkd.io/ip'
alias vi='vim'

# docker
alias d='docker'
alias di='docker images'
alias dia='docker images -a'
alias dps='docker ps'
alias dpsa='docker ps -a '
alias drmold="docker ps -aq | xargs docker rm"
alias dru='docker run --name ubuntu --rm -it ubuntu:16.04 bash'
alias drun='docker run --rm -it '

# kubernetes
alias k='kubectl'
alias klog='kubectl logs -f'
alias krc='kubectl get rc'
alias ks='kubectl --namespace=kube-system'
alias kslog='kubectl logs -f --namespace=kube-system'
alias ksrc='kubectl get rc --namespace=kube-system'
alias kssvc='kubectl get svc --namespace=kube-system'
alias ksvc='kubectl get svc'
