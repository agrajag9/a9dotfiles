# ~/.bash_aliases
# Imported by ~/.bashrc

# colorize grep(s)
alias grep='grep --color=auto'
if hash egrep 2>/dev/null; then
    alias egrep='egrep --color=auto'
fi
if hash fgrep 2>/dev/null; then
    alias fgrep='fgrep --color=auto'
fi
if hash zgrep 2>/dev/null; then
    alias zgrep='zgrep --color=auto'
fi
if hash pcregrep 2>/dev/null; then
    alias pcregrep='pcregrep --color=auto'
fi

# nl should number empty lines too. seriously, how is this not the default? GNU.... <shakes fist>
alias nl='nl -ba'

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(/usr/bin/dircolors -b ~/.dircolors)" || eval "$(/usr/bin/dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
fi

# some more ls aliases
LS_VERSION="$(ls --version 2>/dev/null)"
if [[ "$LS_VERSION" == *"GNU coreutils"* ]]; then
    alias ls='ls --color=auto'
else
    alias ls='ls -G'
fi
alias ll='ls -l'      # long list
alias lla='ls -la'    # long list with hidden
alias lsl='ls -Fl'    # human readable long list
alias lsa='ls -aFl'   # human readable long list with hidden files
alias l1='ls -1'                                # list as 1 column
alias l1a='ls -a1'                              # list as 1 column with hidden files

# some other goodies
if hash vim 2>/dev/null; then
    alias vi='vim'
fi
alias duh='du -sh .'
if hash xxd 2>/dev/null; then
    alias xxd='xxd -g 8 -c 32'
fi

# such commit
# very push
# wow
if hash git 2>/dev/null; then
    alias such='git'
    alias very='git'
    alias wow='git status'
fi
