
alias cdar='cd ~/go/src/github.com/argoproj/argo-rollouts'
alias ro0='k scale --replicas=0 deployment/argo-rollouts -n argo-rollouts'
alias ro1='k scale --replicas=1 deployment/argo-rollouts -n argo-rollouts'
alias lzd='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v /yourpath/config:/.config/jesseduffield/lazydocker lazyteam/lazydocker'

. ~/kfile.sh
. ~/stop.sh

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
