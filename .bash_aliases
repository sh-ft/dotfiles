alias git='hub'
alias g='git'

alias vim='nvim'

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dm='docker-machine'

dcu() {
  docker-compose up -d --force-recreate "$1" && docker-compose logs -f "$1"
}

alias docker-remove-stopped-containers='docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v'
alias docker-remove-untagged-images='docker images -q --filter "dangling=true" | xargs docker rmi'
alias docker-remove-dangling-volumes='docker volume ls -qf dangling=true | xargs -r docker volume rm'

alias k='kubectl'
alias mk='minikube'
alias kps='k get po -Lapp -Ltier -Lenv'
alias kubectl-remove-evicted-pods="kubectl get po --no-headers | grep Evicted | awk '{print \"po/\" \$1}' | xargs -r kubectl delete"
alias kube-insense="gcloud container clusters get-credentials insense-1"
