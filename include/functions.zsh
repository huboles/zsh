#!/bin/bash

# cd + ls wrapper

cd() {
    z $1
    ls
}

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

# docker stats
dockerview() {
    watch -d -t 'docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" |\
        sed -e "s/0.0.0.0//g" \
        -e "s/:::[0-9]*->[0-9]*//g" \
        -e "s/://g" \
        -e "s_/tcp__g" \
        -e "s_/udp__g" \
        -e "s/,//g" | \
        cut -b-120 '
}
