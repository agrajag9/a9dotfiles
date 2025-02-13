# .bashrc


### Make sure we're in an interactive shell
[[ "$-" != *i* ]] && return


### Make sure our terminal is set properly for powerline
export TERM="screen-256color"
export LANG=$(locale -a | grep en_US | grep -iE 'utf-?8')


### Set time style to ISO long format (YYYY-MM-DD hh:mm:ss)
export TIME_STYLE="long-iso"


### Agrajag9's fancy prompt
export PS1='[ \e[32m\D{%FT%T}\e[m \e[94m\u\e[m\e[91m@\e[m\e[94m\H\e[m\e[91m:\e[m\e[0;32m$(pwd)\e[m ]\n\$ '


### Start powerline daemon
#if [ -f `which powerline-daemon` ]; then
  #powerline-daemon -q
  #POWERLINE_BASH_CONTINUATION=1
  #POWERLINE_BASH_SELECT=1
  #source /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
#fi


### Bash history settings
export HISTCONTROL=ignorespace
export HISTSIZE=500000
export HISTFILESIZE=500000
export HISTTIMEFORMAT="%Y-%m-%dT%H:%M:%SZ "
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


### Setup perl environment
if [ -d "${HOME}/perl5" ]; then
    PATH="${HOME}/perl5/bin${PATH:+:${PATH}}"; export PATH;
    PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
    PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
    PERL_MB_OPT="--install_base \"${HOME}/perl5\""; export PERL_MB_OPT;
    PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"; export PERL_MM_OPT;
    eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)
fi


### Setup go environment
if [ -d "${HOME}/go" ]; then
    export GOPATH="${HOME}/go"
    if [ -d "${HOME}/go/bin" ]; then
        export GOBIN=$GOPATH/bin
        export PATH=$PATH:$GOBIN
    fi
    if [ -d "/usr/local/lib/go" ]; then
        export GOROOT="/usr/local/lib/go"
        export PATH=$PATH:$GOROOT
    fi
fi


### Set vim as the default editor
if hash vim 2>/dev/null; then
    export EDITOR="vim"
else
    export EDITOR="vi"
fi


### Load bash customizations
if [ -f "${HOME}/.bash_aliases" ]; then
    source "${HOME}/.bash_aliases"
fi

if [ -f "${HOME}/.bash_functions" ]; then
    source "${HOME}/.bash_functions"
fi

if [ -f "${HOME}/.bash_local" ]; then
    source "${HOME}/.bash_local"
fi

if [ -f "${HOME}/.bash_private" ]; then
    source "${HOME}/.bash_private"
fi


### Enable some extra paths
if [ -d "${HOME}/bin" ]; then
    export PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/man" ]; then
    export MANPATH="${HOME}/man:${MANPATH}"
fi

if [ -d "${HOME}/info" ]; then
    export INFOPATH="${HOME}/info:${INFOPATH}"
fi

if [ -f "${HOME}/.dircolors" ]; then
    eval `dircolors ${HOME}/.dircolors`
fi

if [ -d "${HOME}/.local/bin" ]; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi
