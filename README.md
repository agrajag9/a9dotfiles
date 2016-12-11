# a9dotfiles

## A few thoughts on the design

* Solarized dark is full of win.
* Prompt line enables quick copy/paste with audit trail (datetime + user + hostname + pwd) or quick anonymization with copy/paste
* Also useful for moving files around with SCP/SFTP:
 * In Cygwin, double-click `$PWD` to quickly copy `${USER}@${HOSTNAME}:${PWD}` for paste in another terminal
 * Double-click `$USER` or `$HOSTNAME` and copy `${USER}@${HOSTNAME}` without `$PWD`

## Screenshots are nice, right?

![alt tag](http://i.imgur.com/MLwOaFd.png)

## Other things on my "fresh install" list

### vimrc

https://github.com/amix/vimrc

Mine is based on the one from amix, but with a couple customizations.

### Tmux and powerline

https://github.com/tmux/tmux

I recommend installing this from source. There's a lot of inconsistency between package versions on different repos and it creates a lot of issues with `.tmux.conf` and powerline. Seems to work well with v2.3.

https://pypi.python.org/pypi/powerline

`pip install powerline` seems to be safest. Much like tmux, there's a lot of package inconsistency.

https://pypi.python.org/pypi/powerline-mem-segment

`pip install powerline-mem-segment` 

### Some vim plugins and syntax rules

https://github.com/altercation/vim-colors-solarized

https://github.com/keith/tmux.vim

https://github.com/yaunj/vim-yara

https://github.com/hdima/python-syntax

### Yara and some other file-analysis tools

https://github.com/VirusTotal/yara/releases

Install from source, but just use the archives provided from the link above rather than cloning the git master branch - I've had a lot of problems doing that. I also avoid installing the yara-python module from source and use the pypi package instead, linked just below.

https://pypi.python.org/pypi/yara-python

### LaikaBOSS

https://github.com/lmco/laikaboss

Be a boss with LaikaBOSS.

### MWCP

https://github.com/Defense-Cyber-Crime-Center/DC3-MWCP

Goes great with LaikaBOSS.

### JQ

https://github.com/stedolan/jq

If you're using LaikaBOSS and/or MWCP, you probably want this for parsing JSON results. This can probably be installed with apt or yum. You don't really need to install from source unless you're feeling brave.
