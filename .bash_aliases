alias git='hub'
alias g='git'

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dm='docker-machine'

dcu() {
  docker-compose up -d --force-recreate "$1" && docker-compose logs "$1"
}

alias docker-remove-untagged-images='docker images -q --filter "dangling=true" | xargs docker rmi'
