case "$(uname)" in
    Linux)
        if [ -e ~/.dir_colors ]; then
            eval `dircolors ~/.dir_colors`
        fi
        alias ls='ls --color=auto' ;;
    FreeBSD)
        alias ls='ls -G' ;;
esac

alias grep='grep --color=auto'

alias ls='exa'
alias ll='ls -lah'

#alias cd='z'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'

alias bc='bc -l'

#alias ixit="curl -F 'f:1=<-' -F 'read:1=2' ix.io"
#alias xev-simple="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

alias  va='source venv/bin/activate'
alias  vim=nvim
