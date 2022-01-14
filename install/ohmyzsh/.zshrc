
# git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  minikube
  kubectl
  nvm
#   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting
#   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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
