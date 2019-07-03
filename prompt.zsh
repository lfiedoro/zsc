. ~/.zsh/colors.zsh

autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr "${fg_blue}?"
zstyle ':vcs_info:*' unstagedstr "${fg_brown}?"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn

precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats "${at_normal} ${fg_cyan}%b%c%u${at_normal}"
    } else {
    zstyle ':vcs_info:*' formats "${at_normal} ${fg_cyan}%b%c%u${fg_red}!${at_normal}"
}

vcs_info
}

setopt prompt_subst

# host user
# PROMPT="${at_bold}%m ${fg_red}%n ${fg_blue}%c\${vcs_info_msg_0_} %(?/${at_normal}/${fg_red})%%${at_normal} "
# host
# PROMPT="${at_bold}%m ${fg_pink}%c\${vcs_info_msg_0_} %(?/${at_normal}/${fg_red})%%${at_normal} "
# clean
PROMPT="${fg_pink}%c\${vcs_info_msg_0_} %(?/${at_normal}/${fg_red})%%${at_normal} "

INSERT_PROMPT="#93a1a1"
COMMAND_PROMPT="#dc322f"

set_prompt_color() {
    if [[ $TERM = "linux" ]]; then
        # nothing
    elif [[ $TMUX != '' ]]; then
        printf '\033Ptmux;\033\033]12;%b\007\033\\' "$1"
    else
        echo -ne "\033]12;$1\007"
    fi
}
