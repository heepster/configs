### ENVIRONMENT VARIABLES

set -U OSTACK_IP     "10.20.10.121"
set -U PROJECTS_DIR  "$HOME/code/projects"
set -U WORKSPACE_DIR "$HOME/code/workspace"
set -U CONFIGS_DIR   "$PROJECTS_DIR/configs"
set -U BIN_DIR       "$HOME/code/bin"

### ABBREVIATIONS

## General

abbr -a s "source ~/.config/fish/config.fish"
abbr -a f "cd $PROJECTS_DIR"
abbr -a w "cd $WORKSPACE_DIR"
abbr -a b "cd $BIN_DIR"
abbr -a r "echo 'SSHing to openstack machine'; and ssh kevin@$OSTACK_IP"
abbr -a sc 'echo "Saving configuration files"; and (cd $CONFIGS_DIR; and git add .; and git commit -m "Latest updates"; and git push)'

## MAVEN

abbr -a mcc 'mvn clean compile'
abbr -a mej 'mvn exec:java'

## TMUX

abbr -a tl 'tmux list-sessions'
abbr -a ta 'tmux attach -t '

## GIT

abbr -a ga "git add ."
abbr -a gd "git diff HEAD *"
abbr -a gc "git commit -m"
abbr -a gs "git status"
abbr -a gr "git reset HEAD "

## DOCKER

# Exec into most recent docker container
abbr -a de "set ID (docker ps | grep -v CONTAINER | awk '{print $1}' | head -n 1); docker exec -it \$ID /bin/bash"

# Kill most recent docker container
abbr -a dk "set ID (docker ps | grep -v CONTAINER | awk '{print $1}' | head -n 1); docker kill \$ID"
