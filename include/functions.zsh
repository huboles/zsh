#!/bin/bash

# easy find files
f() {
    find . | grep "$1";
}

# smart remove
rem() {
    if [ ! -d "$HOME/.trash" ]; then mkdir "$HOME/.trash"; fi
    for arg in "$@"
    do
        if [ "$(ls -A $arg)" ]; then  # move to trash if non empty dir
            mv -f "$arg" "$HOME/.trash/$1"
        elif [ -d "$arg" ]; then  # delete empty directories
            rmdir "$arg"
        elif [ -f "$arg" ]; then  # move files to trash
            mv -f "$arg" "$HOME/.trash/$1"
        else
            echo -e "\n\033[31;1;4mFile Not Found:\033[0m\033[34;1m $1\033[0m\n"
        fi
    done
}
