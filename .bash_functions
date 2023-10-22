# Function to create a new directory and change into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Function to extract compressed archives (supports .zip, .tar.gz, .tar.bz2, .tar.xz)
extract() {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.gz) tar xvzf "$1" ;;
            *.tar.bz2) tar xvjf "$1" ;;
            *.tar.xz) tar xvJf "$1" ;;
            *.zip) unzip "$1" ;;
            *) echo "Unrecognized file format: $1" ;;
        esac
    else
        echo "File not found: $1"
    fi
}

# Function to search for a file in the current directory and its subdirectories
ffind() {
    find . -type f -iname "*$1*"
}

# Alias to quickly edit your '.bashrc' file
editbashrc() {
	vim ~/.bashrc
}

# Function to quickly edit the '.bash_aliases' file
editaliases() {
    vim ~/.bashconfigs/.bash_aliases
}

# Function to quickly edit the '.bash_functions' file
editfunctions() {
    vim ~/.bashconfigs/.bash_functions
}

