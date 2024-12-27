if status is-interactive
	set fish_greeting
end

export PATH="/home/sasquatchdev/.cargo/bin:$PATH"

starship init fish | source
