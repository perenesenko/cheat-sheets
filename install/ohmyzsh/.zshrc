
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  minikube
  kubectl
  nvm
  zsh-syntax-highlighting
  zsh-autosuggestions
  sublime
)


# colorls
# brew install colorls
if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls --group-directories-first"
fi
# brew install kubectx; for both
alias kctx="kubectx"
alias kns="kubens"
