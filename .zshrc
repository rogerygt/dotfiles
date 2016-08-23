# Path to your oh-my-zsh installation.
export ZSH=/Users/roger/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(brew git rails ruby bundler capistrano vagrant osx terminalapp)

#---------------------------
#--------- other -----------
alias exportgpg="gpg --export-secret-key -a rogeriocorreia-puppet > workspace/private-key.gpg"

#---------------------------
#--------- vagrant ---------
alias vygt="cd ~/code/vagabond; vagrant up ygt_frontend; vagrant ssh ygt_frontend;"
alias vspa="cd ~/code/vagabond; vagrant up spabreaks; vagrant ssh spabreaks;"
alias vkill="cd ~/code/vagabond; vagrant halt"

#--------------------------
#-------- frontend --------
alias sshstg="ssh www-data@staging-actual.yourgolftravel.com"
alias sshlbstg="ssh rogeriocorreia@lb-staging01.palatinategroup.com"
alias buststgcache="sshlbstg sudo varnishadm ban.url ."

alias sshfe1="ssh www-data@ygt-frontend03.yourgolftravel.com"
alias sshfe2="ssh www-data@ygt-frontend04.yourgolftravel.com"
alias sshexp="ssh www-data@ygt-exp01.yourgolftravel.com"

alias sshlb1m="ssh www-data@lb03.palatinategroup.com"
alias sshlb2m="ssh www-data@lb04.palatinategroup.com"
alias sshlb1="sshlb1m -L19999:localhost:9999"
alias sshlb2="sshlb2m -L29999:localhost:9999"
alias bustlb1cache="sshlb1m sudo varnishadm ban.url ."
alias bustlb2cache="sshlb2m sudo varnishadm ban.url ."

alias sshadmin="ssh www-data@ygt-admin02.corp.yourgolftravel.com"

alias pfadmin="echo 'Port forwarding couchdb02 to 3000:4000'; ssh www-data@admin-actual.yourgolftravel.com -L4000:localhost:3000"
alias pfcouch="echo 'Port forwarding couchdb02 to 5984:3999'; ssh www-data@admin-actual.yourgolftravel.com -L3999:couchdb02:5984"

alias editbash="vim ~/.zshrc"

#----------------------------
#-------- spabreaks ---------
alias sshsb1="ssh www-data@104.155.44.16"
alias sshsb1="ssh www-data@104.155.50.176"
alias sshsb1="ssh www-data@130.211.60.150"

function p {
 builtin cd ~/code/$1 && ls
 }

# Exports
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


# The next line updates PATH for the Google Cloud SDK.
source '/Users/roger/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/roger/google-cloud-sdk/completion.zsh.inc'

export PATH=$HOME/.rbenv/bin:$PATH
#export PATH=/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH
export PGDATA=/usr/local/var/postgres

export tNVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
eval "$(rbenv init -)"

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
