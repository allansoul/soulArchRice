#
# ~/.bashrc
#

##originals##
# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
##end##


# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput setaf 6)\][\[$(tput setaf 1)\]\u\[$(tput setaf 3)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 6)\]]\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput setaf 6)\][\[$(tput setaf 1)\]ROOT\[$(tput setaf 3)\]@\[$(tput setaf 6)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 6)\]\W\[$(tput setaf 6)\]]\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"
fi

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

set termencoding=utf-8
set encoding=utf-8

