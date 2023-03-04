# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h         history 25
alias j         jobs -l
alias la        ls -a
alias lf        ls -FA
alias ll        ls -lA

if ($?prompt) then
        set prompt = "(%n@%B%m%b)~# "
        #set prompt = "[(%B%n%b@%m) (%l) (%d %D/%W/%Y %p) (%~)]\n%# "
        set filec
        set history = 800
        set savehist = 800
        set mail = (/var/mail/$USER)
        if ( $?tcsh ) then
                bindkey "^W" backward-delete-word
                bindkey -k up history-search-backward
                bindkey -k down history-search-forward
                bindkey "\e[3~" delete-char # tchan
        endif

endif
set autolist

setenv  EDITOR  ee
setenv  PAGER   less
setenv  BLOCKSIZE       K

set autolist
#set autologout = 10
#set correct = all
set echo_style = sysv
#set ignoreeof
set matchbeep = nomatch
#set noclobber
set printexitvalue
set rmstar
set symlinks = ignore
set watch = (1 any any)
