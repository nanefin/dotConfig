# packages
neovide
neovim
ripgrep
tree-sitter
gitui
nerdFont
yazi

## install on windows
```sh
winget install Neovim.Neovim neovide.neovide tree-sitter.tree-sitter-cli StephanDilly.gitui DEVCOM.JetBrainsMonoNerdFont sxyazi.yazi Gyan.FFmpeg 7zip.7zip jqlang.jq oschwartz10612.Poppler sharkdp.fd BurntSushi.ripgrep.MSVC junegunn.fzf ajeetdsouza.zoxide ImageMagick.ImageMagick hpjansson.Chafa
```

## install on mac
```sh
brew install --cask neovide
brew install neovim tree-sitter gitui yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font chafa
```

# yazi
## nerdFont
Set your terminal font to the installed Nerd Font.
## chafa
image preview
## windows/mime-type
Set your system environment variables.
```
YAZI_FILE_ONE
C:\Program Files\Git\usr\bin\file.exe
```

# init.lua limitations
Lua only reads lua/* in init.lua.

