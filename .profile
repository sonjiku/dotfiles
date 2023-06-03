# Shell profile

# Load environment at ~/.config/shell/env
. "${HOME}/.config/shell/env"

#if [ "WAYLAND_DISPLAY"="wayland-1" ]; then 
# if [ "$XDG_SESSION_TYPE"="sway" ]; then
    # . "$XDG_CONFIG_HOME/shell/wprofile"
# fi
#
#if [ "$XDG_SESSION_TYPE"!="wayland" ]; then
#    . "$XDG_CONFIG_HOME/x11/xprofile"
#fi


# Load app defaults at ~/.config/shell/defaults/
for file in "${XDG_CONFIG_HOME}/shell/defaults/"*; do
    . "$file"
done

# Load aliases at ~/.config/shell/aliases
. "${XDG_CONFIG_HOME}/shell/aliases"


# LOAD SPECIFIC SHELL CONFIGS
shellused="$(ps -o comm= $$)"

if [ "$shellused"!="sh" ]; then
    ## Load Bash only Options at ~/.config/bash/options
    if [ "$shellused" = "bash" ] ; then
        . "${XDG_CONFIG_HOME}/bash/options"
        . "${XDG_CONFIG_HOME}/bash/completion"
    fi

    # Load zsh only Options at ~/.config/zsh/config
    if [ "$shellused" = "zsh" ] ; then
        . "${XDG_CONFIG_HOME}/zsh/config"
    fi

    ## TMUX
    if command -v tmux >/dev/null 2>&1 ; then
        if [ ! -z "$DISPLAY" ] ; then
                [ ! "$-" = "*i*" ] && return
        else 
            # If not running interactively, do not do anything
            [ ! "$-" = "*i*" ] && return
            [ -z "$TMUX" ] && exec tmux
        fi
    fi

    ## Welcome
    if command -v fastfetch >/dev/null 2>&1 ;then
        fastfetch
    fi
fi
