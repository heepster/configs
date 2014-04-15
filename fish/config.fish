# ALIASES
set -x PROJECT_DIR "~/code/projects"

alias c 'clear'
alias e 'emacs-24.3'
alias f "cd $PROJECT_DIR"
alias s '. ~/.config/fish/config.fish'
alias ga 'git add .'
alias gs 'git status'
alias gc 'git commit -m'
alias gd 'git diff HEAD *'
alias gcl 'git clone'
alias postgres 'postgres -D /usr/local/var/postgres'
alias mastermind 'lein run --port 3003 -r'
alias fish 'chsh -s /usr/local/bin/fish'
alias configs "cd $PROJECT_DIR/configs"
alias railsgrep "grep --exclude-dir=log --exclude-dir=test -ri"


