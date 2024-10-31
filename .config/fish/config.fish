if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Initialize homebrew/linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Initialize asdf
set -gx PATH $HOME/.asdf/shims $PATH
