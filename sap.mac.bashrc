export TZ=US/Pacific
export TAG_WITH_I18N_ORIGIN_OFF=true
export http_proxy='http://proxy.sin.sap.corp:8080'
export https_proxy='http://proxy.sin.sap.corp:8080'

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# For golang
export GOPATH=~/golang-space
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export TERM=xterm-256color

# for local mysql database
export DB_PWD=''


# for no proxy local ip address
no_proxy=localhost,129.0.0.0/8,127.9.9.1*,local,$no_proxy
export no_proxy
