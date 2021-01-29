# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# use vim-style readline editing
set -o vi

# vi mode removes C-l mapping. restore it
bind -m vi-insert "\C-l":clear-screen

# Make C-w stop at slashes too
# (requires this setting in your .inputrc):
# set bind-tty-special-chars Off
# note: made redundant by inputrc changes
#stty werase undef
bind -m vi-insert "\C-w":unix-filename-rubout

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


##
## ALIASES
##

alias la='ls -a'
alias ls='ls -F'
alias l='ls -CF'
alias rm='rm -i'
alias grep='grep --color=auto '
alias fgrep='fgrep --color=auto grep '
alias pcregrep='pcregrep --color=auto '


# For my spaced repetition study tool 
alias learn-pers='$HOME/bin/study.pl --studydir $HOME/.study-pers learn'
alias review-pers='$HOME/bin/study.pl --studydir $HOME/.study-pers review'
alias learn-prof='$HOME/bin/study.pl --studydir $HOME/.study-prof learn'
alias review-prof='$HOME/bin/study.pl --studydir $HOME/.study-prof review'

alias inbox='vim $HOME/TODO/INBOX.txt'
alias todo='vim $HOME/TODO/TODO.md'

alias pydoc=pydoc3
alias pip=pip3

# Typing practice
export GTYPIST_PATH=$HOME/.gtypist
alias gtypist-reg="gtypist -b -s $GTYPIST_PATH/gtypist.typ"
alias gtypist-prog="gtypist -b -s $GTYPIST_PATH/p.typ" 

# Google calendar shortcuts
alias gcal='gcalcli'
alias gcal-agenda-7d='gcalcli --calendar "Peter'"'"'s Calendar"  --calendar "Michalik Szilagyi" agenda 0d 7d'
alias gcal-agenda-30d='gcalcli --calendar "Peter'"'"'s Calendar"  --calendar "Michalik Szilagyi" agenda 0d 30d'
alias gcal-quickadd-peter='gcalcli --calendar "Peter'"'"'s Calendar" quick'
alias gcal-quickadd-family='gcalcli --calendar "Michalik Szilagyi" quick'
alias gcal-add='gcalcli add'

##
## EXPORTS
##

export EDITOR=/usr/bin/vim
export PATH=$HOME/bin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/opt/bin:/opt/oracle/instantclient_19_5:$PATH
export LANG=en_US.UTF-8

