# vim: ft=zsh

export PATH="$PATH:/snap/bin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.usr/bin"
export PATH="$HOME/.local/bin:$PATH"
export GOPATH="$HOME/Sources/Personal/Go"

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export NLTK_DATA="$HOME/.local/share/nltk_data"
