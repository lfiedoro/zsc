#
# ~/.zshrc
#

bindkey -e

autoload -U edit-command-line
autoload -U select-word-style
autoload -U zmv
autoload -U compinit
compinit
zle -N edit-command-line
select-word-style bash

setopt noclobber
setopt hist_allow_clobber
setopt hist_ignore_space
setopt extendedglob
setopt prompt_subst
setopt share_history
setopt short_loops

export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
export EDITOR="emacs -nw"
export PAGER=most
export GPG_TTY="$(tty)"

[ -f ~/.zsh/alias.zsh ] && source ~/.zsh/alias.zsh
[ -f ~/.zsh/environment.zsh ] && source ~/.zsh/environment.zsh
[ -f ~/.zsh/prompt.zsh ] && source ~/.zsh/prompt.zsh
[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh
