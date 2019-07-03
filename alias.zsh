case "$(uname)" in
	Linux)
		if [ -e ~/.dir_colors ]; then
			eval `dircolors ~/.dir_colors`
			alias ls='ls --color=auto'
		fi ;;
	FreeBSD)
		alias ls='ls -G' ;;
esac

alias ll='ls -lah'
