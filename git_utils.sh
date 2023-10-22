#!/bin/bash

# Step 1: Show the output of "git status"
git status

# Step 2: Ask the user if they want to continue
read -p "Do you want to continue? (y/n): " choice

# Step 2.1: If the user's choice is not 'y', exit the program
if [ "$choice" != "y" ]; then
  exit
fi

# Step 3: Ask the user for the commit message
read -p "Enter the commit message: " commit_message

# Step 4: If the message is not empty, perform git add and git commit
if [ -n "$commit_message" ]; then
  # Step 4.1: Perform "git add ."
  git add .

  # Step 4.2: Perform "git commit" with the provided message
  git commit -m "$commit_message"
fi

