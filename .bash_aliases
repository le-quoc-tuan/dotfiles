# SYSTEM
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias www='cd /var/www/html/'
alias ssha='eval $(ssh-agent -s) && ssh-add ~/.ssh/bit_bucket && ssh-add ~/.ssh/com_gitlab && ssh-add ~/.ssh/ltt_gitlab'

# EDITOR
alias v=vim
alias sv='sudo vim'

# BASH
alias bcf='vim ~/.bashrc'
alias bal='vim ~/.bash_aliases'
alias bre='source ~/.bashrc'

# COMPOSER
alias com='php /usr/local/bin/composer.phar'
alias cup='php /usr/local/bin/composer.phar update'

# APACHE
alias aer='tail -f /var/log/apache2/error.log'

# GIT
alias gst='git status'
alias gbr='git branch'
alias gps='git push'
alias gplrb='git pull --rebase'
alias gpl='git pull'
alias glo='git log --oneline'
alias gl='git log'
alias gs='git show'
alias gsst='git show --stat'
alias grb='git rebase'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit'
alias gco='git checkout'
alias gcl='git clean'
alias gsth='git stash'
alias gsthp='git stash pop'
alias gdf='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias grs='git reset'

# SVN
alias sst='svn status'
alias sa='svn add'
alias scm='svn ci'
alias sco='svn co'
alias sup='svn up'
alias scu='svn cleanup'
alias sli='svn list'
alias sdl='svn delete'
alias sdf='svn diff'
alias sl='svn log'
alias smv='svn move'
