# Bash Utilities for Different Shells

This repository contains utility scripts for various shells, including bash, PowerShell, and cmd.

## Repository Structure

- `/bash`: Contains utility scripts and configuration files for the bash shell.
- `/powershell`: Contains utility scripts for the PowerShell shell.
- `/cmd`: Contains utility scripts for the cmd shell.

## Bash Utilities

The `/bash` directory includes the following files:

- `bash_aliases`: Contains custom aliases for the bash shell.
- `bash_functions`: Contains custom functions for the bash shell.
- `git_utils`: A script to help with git commits.
- `vim/.vimrc`: The configuration file for vim. Copy it in your home folder to enable the configuration.

To install the bash utilities, follow these steps:

1. Open the terminal.
2. Navigate to the root folder of this repository.
3. Append the content of `bash/bashrc_patch` to your `~/.bashrc` file using the following command:

   ```
   cat bash/bashrc_patch >> ~/.bashrc
   ```
4. Source the `.bashrc` file with the command `source $HOME/.bashrc`.
5. From now on, you can use the alias `source-all` to source the `.bashrc`, `.bash_aliases` and `.bash_functions` files.

This will add the necessary configurations and aliases to your bash shell.

## PowerShell and cmd Utilities

The `/powershell` and `/cmd` directories contain utility scripts specific to their respective shells. Please refer to the instructions provided within those directories for installing and using those utilities.

To install the git utility, follow these steps:

1. Open the terminal.
2. Open the `$PROFILE` file with your favorite editor (e.g. notepad) with the following command: 

   ```
   notepad $PROFILE
   ```

3. Copy the content of `powershell/git_utils.ps1` inside the opened editor.
4. Save, close and restart the terminal.
5. Type `git-utils` and use the function.