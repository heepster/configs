### ENVIRONMENT VARIABLES
set -U PROJECTS_DIR  "$HOME/code/projects"
set -U WORKSPACE_DIR "$HOME/code/workspace"
set -U CONFIGS_DIR   "$PROJECTS_DIR/configs"
set -U BIN_DIR       "$HOME/code/bin"
set -U WORK_DESKTOP_IP "10.0.201.41"

### ABBREVIATIONS

## General
abbr -a s "source ~/.config/fish/config.fish"
abbr -a f "cd $PROJECTS_DIR"
abbr -a w "cd $WORKSPACE_DIR"
abbr -a b "cd $BIN_DIR"
abbr -a sc 'echo "Saving configuration files"; and cd $CONFIGS_DIR; and git add .; and git commit -m "Latest updates"; and git push'
abbr -a wd "ssh kevin@$WORK_DESKTOP_IP"

## Java
switch (uname)
case Darwin
  set -g -x JAVA_8_HOME (/usr/libexec/java_home -v1.8)
  set -g -x JAVA_7_HOME (/usr/libexec/java_home -v1.7)
  abbr -a java7 'set -g -x JAVA_HOME $JAVA_7_HOME'
  abbr -a java8 'set -g -x JAVA_HOME $JAVA_8_HOME'
  set -g -x JAVA_HOME $JAVA_8_HOME
case Linux 
  # Linux has good support for Java version switching already
end

## TMUX
abbr -a tl 'tmux list-sessions'
abbr -a ta 'tmux attach -t '

## GIT
abbr -a ga "git add ."
abbr -a gd "git diff --cached"
abbr -a gc "git commit -m"
abbr -a gs "git status"

rvm default

set -gx PATH /usr/local/bin $PATH
