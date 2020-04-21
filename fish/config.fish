### ENVIRONMENT VARIABLES
set -U PROJECTS_DIR "$HOME/workspace/projects"
set -U CONFIGS_DIR "$PROJECTS_DIR/configs"
set -gx EDITOR "nvim"

### ABBREVIATIONS

## General
abbr -a p "cd $PROJECTS_DIR"
abbr -a c "cd $CONFIGS_DIR"
abbr -a sc 'echo "Saving configuration files"; and cd $CONFIGS_DIR; and git add .; and git commit -m "Latest updates"; and git push'
abbr -a s "source ~/.config/fish/config.fish"

## TMUX
abbr -a tl 'tmux list-sessions'
abbr -a ta 'tmux attach -t '

## GIT
abbr -a ga "git add ."
abbr -a gd "git diff --cached"
abbr -a gc "git commit -m"
abbr -a gs "git status"

# OPEN COMMON FILES
abbr -a vc "nvim ~/.config/nvim/init.vim"
abbr -a fc "nvim ~/.config/fish/config.fish"

switch (uname)
case Darwin
  # Set Path
  set -gx PATH ~/Library/Python/3.7/bin /usr/local/opt/python/libexec/bin /usr/local/bin ~/.cargo/bin $PATH

  # Workaround for slow auto completion
  function __fish_describe_command; end
case Linux
end

