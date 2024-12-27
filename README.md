# sasquatchdev/dotfiles

This repository contains a colletion of all my local dotfiles 
(mainly `~/.config`).

## installation

if you want to install the entirety of my configuration, simply 
clone the repository using 

```bash
git clone https://github.com/sasquatchdev/dotfiles ~/dot
```

then, you need to use (GNU Stow)[https://www.gnu.org/software/stow/]
to sync the dotfiles folder to the target locations:

```bash
cd ~/dot && stow *
```

if you only want a part of the repo, simply replace the `*` with your
desired configuration. e.g.

```bash
cd ~/dot && stow nvim
```

unfortunately, you will still have to download the entire git repository,
however you can delete everything that you don't want without any problems.
