# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

export TERM=xterm-256color

# Show all files by default and enable color.
alias ls='ls -A --color=auto'
# Enable color by default for grep.
alias grep='grep --color=auto'

# My custom prompt!
# This prompt shows you the cwd and the git branch you're on, if any, while taking up minimal space on the command line.
# Note that these seemingly unnecessary backslashes and additional brackets are in fact necessary to not mess up the terminal (you'll notice if you remove them).
PS1='\[\033[01;32m\]$(pwd|sed "s|$HOME|~|")$(if git branch --show-current 1> /dev/null 2> /dev/null; then echo "\[\033[00m\]@\[\033[00m\]\[\033[01;34m\]$(git branch --show-current)"; fi)\[\033[00m\]\$ '

# This list of aliases intentionally omits commands such as `git checkout` that require arguments as tab auto-completion doesn't work for aliases (not with Bash at least).
alias gap="git add -p"
alias grp="git restore -p"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gl="git log"

# Download from https://ziglang.org, unzip, and then rename to zig-linux-x86_64.
export PATH=$PATH:~/zig-linux-x86_64

export EDITOR=vim

# Don't save the line history in a .bash_history file.
unset HISTFILE

# Don't add the line to the history if it matches the previous history entry.
# Also remove all previous lines from the history that match the line.
export HISTCONTROL=ignoredups:erasedups

# Prevent Ctrl+D from closing the terminal.
set ignoreeof

cd ~
