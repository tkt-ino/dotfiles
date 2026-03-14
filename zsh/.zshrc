###############################
# oh my zsh
###############################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gozilla"
plugins=(
	git
	zsh-completions
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
alias ohmyzsh="mate ~/.oh-my-zsh"

###############################
# env
###############################
export PATH=$PATH:/opt/nvim/bin
export EDITOR=nvim

###############################
# alias
###############################
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

###############################
# fzf
###############################
eval "$(fzf --zsh)"

###############################
# yazi
###############################
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

###############################
# mise
###############################
eval "$(mise activate zsh)"
