# ALIASES
set -x PROJECT_DIR "~/code/projects"

alias c 'clear'
alias e 'emacs'
alias f "cd $PROJECT_DIR"
alias s '. ~/.config/fish/config.fish'

alias travel 'ssh kevin@10.20.10.121'

# GIT
alias ga 'git add .'
alias gs 'git status'
alias gc 'git commit -m'
alias gd 'git diff --staged'
alias gcl 'git clone'
alias gcyc 'git checkout master; git merge develop; git push; git checkout develop'

# TMUX
alias tl 'tmux list-sessions'
alias ta 'tmux attach -t'

# MISC
alias postgres 'postgres -D /usr/local/var/postgres'
alias mastermind 'lein run --port 3003 -r'
alias fish 'chsh -s /usr/local/bin/fish'
alias configs "cd $PROJECT_DIR/configs"
alias railsgrep "grep --color=auto --exclude-dir=log --exclude-dir=test -r"
alias pub_key "cat ~/.ssh/id_rsa.pub"

set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)

alias ki 'kinit --kdc-hostname=kdc-master.prod.factual.com kevin@FACTUAL.COM'
alias kl 'klist'

set -x JAVA_HOME (/usr/libexec/java_home)

source ~/.nvm-fish/nvm.fish

set -x DOCKER_HOST tcp://(boot2docker ip 2>/dev/null):2376

