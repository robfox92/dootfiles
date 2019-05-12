# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# user defined functions

mkcdir ()
{
  mkdir $1;
  cd $1
}

# https://superuser.com/questions/1144959/how-do-i-stop-fullscreen-games-from-minimizing-when-i-click-on-another-window-on
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0

# add timestamps to history
export HISTTIMEFORMAT='%Y-%m-%d %T    '

# Shortcut hist
alias hist='history'

export PATH="$HOME/.cargo/bin:$PATH"
