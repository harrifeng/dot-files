export http_proxy='http://proxy.sin.sap.corp:8080'
export https_proxy='http://proxy.sin.sap.corp:8080'
export TERM=xterm-256color
export PATH="/usr/local/bin:$PATH"

# git show branch------------------------------------------>
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# for no proxy local ip address---------------------------->
no_proxy=localhost,129.0.0.0/8,127.9.9.1*,local,$no_proxy
printf -v no_proxy '%s, ' 192.168.37.{1..255};
export no_proxy="${no_proxy%,}"
export EDITOR='emacs'

# For golang
export GOPATH=~/golang-space
export PATH=$PATH:$GOPATH/bin
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOROOT/bin