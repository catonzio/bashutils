function git-utils() {
    # Step 1: Show the output of "git status"
    git status

    # Step 2: Ask the user if they want to continue
    $choice = Read-Host "Do you want to continue? (y/n)"

    # Step 2.1: If the user's choice is not 'y', exit the program
    if ($choice -ne 'y') {
        return
    }

    # Step 3: Ask the user for the commit message
    $commit_message = Read-Host "Enter the commit message"

    # Step 4: If the message is not empty, perform git add and git commit
    if ($commit_message -ne "") {
        # Step 4.1: Perform "git add ."
        git add .

        # Step 4.2: Perform "git commit" with the provided message
        git commit -m $commit_message
    }
}