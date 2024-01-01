# This is *not* a complete ~/.bashrc. I took my ~/.bashrc and omitted everything that I didn't add.

# My custom prompt!
# This prompt shows you the cwd and the git branch you're on, if any, while taking up minimal space on the command line.
# Note that these seemingly unnecessary backslashes and additional brackets
# are in fact necessary to not mess up the terminal (you'll notice if you remove them).
PS1='\[\033[01;32m\]$(pwd|sed "s|$HOME|~|")$(if git branch --show-current 1> /dev/null 2> /dev/null; then echo "\[\033[00m\]@\[\033[00m\]\[\033[01;34m\]$(git branch --show-current)"; fi)\[\033[00m\]\$ '

# Download from https://ziglang.org
# and then rename to zig-linux-x86_64
export PATH=$PATH:~/zig-linux-x86_64

# Download from https://dotnet.microsoft.com/en-us/download/dotnet
# and then rename to dotnet
export PATH=$PATH:~/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# By default, go to the desktop.
# But only go to desktop if we start in the home directory.
# This makes for example :ter in vim work properly.
if test $(pwd) = ~; then cd ~/Desktop; fi

# This list of aliases intentionally omits commands such as `git checkout` that require
# arguments as tab auto-completion doesn't work for aliases (not with Bash at least).
alias gap="git add -p"
alias grp="git restore -p"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gl="git log"

# This avoids duplicate commands in the command history.
export HISTCONTROL=ignoreboth:erasedups
