# packages
neovide
neovim
ripgrep
tree-sitter
gitui
yazi

## install on windows
```sh
winget install -e --id Neovim.Neovim
winget install -e --id neovide.neovide
winget install -e --id BurntSushi.ripgrep.MSVC
winget install -e --id tree-sitter.tree-sitter-cli
```

## install on mac
```sh
brew install --cask neovide
brew install neovim tree-sitter gitui yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font chafa
```

# yazi
Set your terminal font to the installed Nerd Font.
## Chafa
Image preview

# init.lua limitations
Lua only reads lua/* in init.lua.

