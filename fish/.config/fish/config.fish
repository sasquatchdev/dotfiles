if status is-interactive
	set fish_greeting # disables fish_greeting
end

export PATH="/home/sasquatchdev/.cargo/bin:$PATH" # adds cargo/bin to PATH

starship init fish | source     # sources starship
source ~/.asdf/asdf.fish        # sources asdf-vm
