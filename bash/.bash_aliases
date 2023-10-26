# Set the paths directly in .bash_aliases
# ALIASES_PATH="$HOME/bashutils/bash/.bash_aliases"
# FUNCTIONS_PATH="$HOME/bashutils/bash/.bash_functions"

# Alias to source all the files
alias source-all="source $ALIASES_PATH && source $FUNCTIONS_PATH && source ~/.bashrc"

alias git-utils="$(dirname $ALIASES_PATH)/git_utils.sh"

# Alias to update and upgrade in one command
alias update="sudo apt update && sudo apt upgrade -y"

# Alias to open Sublime Text
alias sublime="/mnt/c/Program\ Files/Sublime\ Text/subl.exe"

# Alias to show a progress bar while copying files
alias cp='rsync --progress -ah'

# Alias to make 'ls' more colorful and user-friendly
alias ls='ls --color=auto -F'

# Alias to display a tree-like directory structure
alias tree='tree -C'

# Alias to show a human-readable file size when using 'ls'
alias lsh='ls -lh'

# Alias to clear the terminal screen
alias cls='clear'

# Alias to show a list of running processes
alias pslist='ps aux'

# Alias to list only directories in the current directory
alias lsd='ls -d */'


