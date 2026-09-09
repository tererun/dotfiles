# dotfiles

macOS development environment managed with [chezmoi](https://www.chezmoi.io/).

## Fresh Mac

```sh
brew install chezmoi
chezmoi init <your-git-repository-url>
brew bundle --file "$(chezmoi source-path)/Brewfile"
chezmoi apply
nvim
```

The first Neovim launch installs plugins and the configured language servers.
Run `:checkhealth` if something does not start correctly.

Git identity and signing settings belong in `~/.gitconfig.local`. This file is
intentionally not managed, so public dotfiles never expose machine-specific
identity settings.

## Daily use

```sh
chezmoi diff               # preview pending changes
chezmoi add ~/.zshrc       # import a changed file
chezmoi edit ~/.zshrc      # edit the managed source
chezmoi apply              # apply source to $HOME
chezmoi cd                 # open the source repository
```

Neovim's leader key is Space. Useful mappings include:

- `<leader>ff`: find files
- `<leader>fg`: search text
- `<leader>fb`: open buffers
- `<leader>e`: file browser
- `<leader>t`: terminal below
- `<leader>v`: terminal on the right
- `<leader>gg`: Lazygit
- `<leader>f`: format the current buffer
- `gd`, `gr`, `K`: definition, references, documentation
