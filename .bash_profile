
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

eval "$(hub alias -s)"

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin:$MAGICK_HOME/bin:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:/Users/ttate/android-sdks/platform-tools
. /usr/local/git/contrib/completion/git-completion.bash 
PS1='localhost:\w\n$(__git_ps1 "(%s)")\$ '
bind '"\e[3~": delete-char'


#-------------- Terminal --------------
export CLICOLOR=YES
#export LSCOLORS='gxBxhxDxfxhxhxhxhxcxcx'
export GREP_OPTIONS='--color=auto'

alias ll='ls -l'
alias sp='source ~/.bash_profile'
alias pe='subl3 ~/.bash_profile'
alias pd='cat ~/.bash_profile'

shopt -s cdable_vars
# export dirname="dirpath"

# alias t='tail -f /tmp/klog-$(date +"%Y-%m-%d").log';
# alias t1='t | grep "^WARN"';
# alias t2='t | grep "^ERROR"';
# alias c='cat /tmp/klog-$(date +"%Y-%m-%d").log';

#-------------- Misc Exports --------------
#export MAGICK_HOME="/usr/local/funzio/installations/ImageMagick-6.6.3"
#export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export SSH_USER="logwatcher"
export DEFAULT_FACEBOOK_USER=1502589236

export LIBMEMCACHED=/usr/local/libmemcached
export MYSQL=/usr/local/mysql/bin/mysql
export MYSQL_USER=root
export MYSQL_SOCK=/tmp/mysql.sock


#-------------- Git --------------
alias gs='git status'
alias gl='git log  --pretty=format:"%C(yellow)%cn%Creset %C(yellow)%d%Creset   %s   (%h)%n%C(white)  %cd%Creset" --name-only --committer="^[^(?:QA)]"'
alias gla='git log  --pretty=format:"%C(red)%cn%Creset %C(red)%d%C(white)   %s   (%h)%n%C(yellow)  %cd%Creset" --name-only'
alias gitk='gitk &'

