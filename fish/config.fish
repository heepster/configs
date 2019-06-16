### ENVIRONMENT VARIABLES
set -U PROJECTS_DIR  "$HOME/workspace/code"
set -U CONFIGS_DIR = "$HOME/workspace/code/configs"

### ABBREVIATIONS

## General
abbr -a s "source ~/.config/fish/config.fish"
abbr -a f "cd $PROJECTS_DIR"
abbr -a sc 'echo "Saving configuration files"; and cd $CONFIGS_DIR; and git add .; and git commit -m "Latest updates"; and git push'

## Java
switch (uname)
case Darwin
  set -g -x JAVA_8_HOME (/usr/libexec/java_home -v1.8)
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

abbr -a vim "nvim"

rvm default

set -gx PATH ~/Library/Python/3.7/bin /usr/local/opt/python/libexec/bin /usr/local/bin $PATH
