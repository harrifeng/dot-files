export http_proxy='http://proxy.sin.sap.corp:8080'
export https_proxy='http://proxy.sin.sap.corp:8080'

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
