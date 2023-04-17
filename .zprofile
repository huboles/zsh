unset XDG_RUNTIME_DIR
export XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)

[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && exec startx
