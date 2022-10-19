# Dotfiles for $HOME Folder

## Requirements

-   Git

## Managing dotfiles

### Preperations

Make sure that the following alias is inside your `.bashrc` or `.zsh`

```shell
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

### Commands

Use the common git commands with the alias `config` instead of `git`:

```shell
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

## Source / Tutorial

-   [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
