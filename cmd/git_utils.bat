@echo off
setlocal enabledelayedexpansion

:: Step 1: Show the output of "git status"
git status

:: Step 2: Ask the user if they want to continue
set /p choice=Do you want to continue? (y/n): 

:: Step 2.1: If the user's choice is not 'y', exit the program
if /i "!choice!" neq "y" (
    exit
)

:: Step 3: Ask the user for the commit message
set /p commit_message=Enter the commit message: 

:: Step 4: If the message is not empty, perform git add and git commit
if not "!commit_message!"=="" (
    :: Step 4.1: Perform "git add ."
    git add .

    :: Step 4.2: Perform "git commit" with the provided message
    git commit -m "!commit_message!"
)

endlocal

