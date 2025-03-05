# ENV Variables/PATHs
export ZSH="${HOME}/.oh-my-zsh"
export GOPATH="${HOME}/go"
export EDITOR=vim
export KUBE_EDITOR=vim
export PATH=/usr/local/bin/:$PATH:$HOME/bin
export PATH="${PATH}:${HOME}/.krew/bin"
export KUBECONFIG=~/.kube/config

# ZSH Setup
plugins=(zsh-z zsh-autosuggestions azure git brew docker docker-compose gradle terraform zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# KubeCTL completion
kubectl completion zsh > ~/.kubectl-completion
source ~/.kubectl-completion

# Azure CLI completion (new addition)
source ~/.azure/completion/az.completion

# Env Variables
# Extra more custom ENV variables
[[ -f ~/.zsh/envs.zsh ]] && source ~/.zsh/envs.zsh

# Aliases and Functions
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
# [[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh


# Setup Starship prompt
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
eval "$(starship init zsh)"


# Setup Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
