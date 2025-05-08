#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias hx='helix'
alias grep='grep --color=auto'
PS1='[\w]\$ '

bind -x $'"\C-g":clear;'

eval "$(fzf --bash)"
alias tmux='tmux new -As0'
export EDITOR=helix
alias hxsu='sudo $(which helix) -c $HOME/.config/helix/config.toml'
alias p381='ssh -f -N 10.10.1.112 -L 5000:localhost:5000 -L 8502:localhost:8502 &'
alias c381='ssh -f 10.10.1.112 -X -Y xfce4-terminal --color-bg=#1d2021 --hide-toolbar --hide-scrollbar --hide-menubar --command bash'
alias c799='ssh -f spbhws799u -X -Y xfce4-terminal --color-bg=#1d2021 --hide-toolbar --hide-scrollbar --hide-menubar --command bash'

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

lf () {
	LF_TEMPDIR="$(mktemp -d -t lf-tempdir-XXXXXX)"
	LF_TEMPDIR="$LF_TEMPDIR" ~/.config/lf/lf-run -last-dir-path="$LF_TEMPDIR/lastdir" "$@"
	if [ "$(cat "$LF_TEMPDIR/cdtolastdir" 2>/dev/null)" = "1" ]; then
		cd "$(cat "$LF_TEMPDIR/lastdir")"
	fi
	rm -r "$LF_TEMPDIR"
	unset LF_TEMPDIR
}

source ~/.config/.git-completion.bash 
