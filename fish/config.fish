### ENVIRONMENT VARIABLES
set -U PROJECTS_DIR "$HOME/workspace/code"
set -U CONFIGS_DIR "$PROJECTS_DIR/configs"

### ABBREVIATIONS

## General
abbr -a p "cd $PROJECTS_DIR"
abbr -a c "cd $CONFIGS_DIR"
abbr -a sc 'echo "Saving configuration files"; and cd $CONFIGS_DIR; and git add .; and git commit -m "Latest updates"; and git push'
abbr -a s "source ~/.config/fish/config.fish"

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

# OPEN COMMON FILES
abbr -a vc "nvim ~/.config/nvim/init.vim"
abbr -a fc "nvim ~/.config/fish/config.fish"

abbr -a node "nvm; and node"

switch (uname)
case Darwin
  set -gx PATH ~/Library/Python/3.7/bin /usr/local/opt/python/libexec/bin /usr/local/bin ~/.cargo/bin $PATH
case Linux
end
