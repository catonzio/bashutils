# Path definitions

unset THIS_PATH
unset ALIASES_PATH
unset FUNCTIONS_PATH


export THIS_PATH=$(dirname "$(realpath ${BASH_SOURCE[0]})")
export ALIASES_PATH="$THIS_PATH/.bash_aliases"
export FUNCTIONS_PATH="$THIS_PATH/.bash_functions"

# echo "Path: $THIS_PATH, Aliases: $ALIASES_PATH, Functions: $FUNCTIONS_PATH"

# Sourcing
source $ALIASES_PATH
source $FUNCTIONS_PATH

install-bashutils() {
	content="source $THIS_PATH/bashmain.sh"
	if ! grep -q "$content" "$HOME/.bashrc"; then
		echo "Inserting the line '$content' into $HOME/.bashrc"
  		echo $content >> $HOME/.bashrc
	fi
	source $HOME/.bashrc
}
