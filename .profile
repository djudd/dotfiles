export PATH=~/local/sbin:~/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

source ~/.academia-secrets
source ~/.personal-aws-server
export ACADEMIA_LDAP_USERNAME=djudd

export ACADEMIA_APP=~/src/academia-edu/academia-app
export ACADEMIA_PGSQL=/usr/local/var/postgres
export ACADEMIA_MONGO=/usr/local/var/mongodb
export ACADEMIA_SHELL=~/.academia-shell
export ACADEMIA_WIKI=~/src/academia-edu/academia-app.wiki
export ACADEMIA_ZOO=~/src/academia-edu/zoo
export ACADEMIA_CONFIG=~/src/academia-edu/config
export ACADEMIA_EC2_KEYS=~/.ssh/ec2_keys

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_CFLAGS="-march=native -O3"

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
alias mssh='ssh -i ~/.ssh/personal-aws-default.pem $PERSONAL_AWS_SERVER'
alias mmir='git checkout master && git push && git checkout release && git fetch && git reset --hard origin/release && git merge master -m "mmir" && git push && be cap production deploy && git checkout master'
alias sc='cd $ACADEMIA_APP && bundle exec rails console'
alias setup_testdb='cd $ACADEMIA_APP; be rake db:structure:dump; RAILS_ENV=test be rake db:drop; RAILS_ENV=test be rake db:create db:structure:load'
alias usproxy='ssh -L 3128:localhost:8888 -N -i ~/.ssh/personal-aws-default.pem $PERSONAL_AWS_SERVER'

export PATH="$HOME/Library/Haskell/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export SVM_LIGHT_HOME=/Users/david/svm_light5
export CRFPP_HOME=/usr/local
export NODE_ENV=dev

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[[ -s /Users/david/.nvm/nvm.sh ]] && . /Users/david/.nvm/nvm.sh # This loads NVM

# Put git branch into prompt
CYAN="\[\033[0;36m\]"
GREY='\[\033[0;33m\]'
export PS1="\[\033[00m\]\w\[\033[00m\] $CYAN\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[00m\]༔\[\033[00m\] "

export PATH="$PATH:/Users/david/adt-bundle-mac-x86_64-20130917/sdk/tools"

ulimit -n 16348

set -o vi
