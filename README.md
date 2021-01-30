# Neovim Nightly with bundled Configuration

For my daily work I use the stable release of neovim (Version 0.4.4 as the time of writing)
in conjunction with CoC and a large monolithic, grown over time configuration
file.

Out of curiosity I wanted to have a playground for neovim's 0.5 lsp support and
a clean starting point to rethink my configuration, used plugins and maybe try
some new stuff.

However, it was a very important subject to me that none of all the experimentation
and restructuring would interfere with my working setup.

So I came up with a simple wrapper script which can be used to install and
update neovim nightly and use the bundled configuration located in the same
path the script is in.

![screenshot](https://github.com/Buckmeister/nvim-nightly/raw/master/docs/Screenshot.png "Screenshot of neovim with defx opened in centered, border decorated floating window")

Here are the necessary steps for installing and using it

```
export NVIM_NIGHTLY_DIR="$HOME/.local/share/nvim/nightly"
mkdir -p "$NVIM_NIGHTLY_DIR"
cd "$NVIM_NIGHTLY_DIR"
git clone https://github.com/Buckmeister/nvim-nightly.git .
./nvim-nightly.sh
```

Optionally, you can alias the script by adding this to your shell
configuration

```
export NVIM_NIGHTLY_DIR="$HOME/.local/share/nvim/nightly"
alias nvn="$NVIM_NIGHTLY_DIR/nvim-nightly.sh"
```

Or symlink it to some directory included in your $PATH. For example:

```
ln -s "$NVIM_NIGHTLY_DIR/nvim-nightly.sh" "$HOME/.local/bin/nvn"
```

In order to perform an update of neovim's nightly distribution, use the
'-u' command line parameter.

```
nvn -u
```

Have fun!
