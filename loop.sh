#! /usr/bin/env bash

# for ii in {0..20}
# do
#     echo "One two $ii"
# done

function promptUser() {
    read response
    echo "$response"
}



# Just an exit program 
function exitProgram() {
    echo "Thanks for playing"
}

dir="randomDir"

if [ -d "$dir" ]
then
    echo "Directory exists.?"
    # First we ask the user if we should delete the dir:
    echo -n "Delete Dir [Y/N]:"
    response=$(promptUser)
    if [[ "$response" = "Y" ]]
    then
        echo "YES"
    else
        echo "NO"
        exitProgram
    fi
else
    echo "Making directory"
    mkdir -p "$dir"
fi


