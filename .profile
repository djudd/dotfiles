export PATH=~/local/sbin:~/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

source ~/.academia-secrets
export ACADEMIA_LDAP_USERNAME=djudd

export ACADEMIA_APP=~/src/academia-edu/academia-app
export ACADEMIA_PGSQL=/usr/local/var/postgres
export ACADEMIA_MONGO=/usr/local/var/mongodb
export ACADEMIA_SHELL=~/.academia-shell
export ACADEMIA_WIKI=~/src/academia-edu/academia-app.wiki
export ACADEMIA_ZOO=~/src/academia-edu/zoo
export ACADEMIA_CONFIG=~/src/academia-edu/config

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="/usr/local/share/npm/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

. $ACADEMIA_SHELL/academia-shell.sh

alias vim='mvim'
alias l='ls -la'
alias be='bundle exec'
alias app='cd $ACADEMIA_APP'
alias vapp='cd $ACADEMIA_APP; vim'
alias g='git'
alias ghome='git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git'

export PATH="$HOME/Library/Haskell/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export SVM_LIGHT_HOME=/Users/david/svm_light5
