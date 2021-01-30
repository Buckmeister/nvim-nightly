# nvim-nightly

For my daily work I use the neovim stable release (0.4.4 as the time of writing)
in conjunction with CoC and a large monolithic grown over time configuration
file.

Out of curiosity and wanted to have a playground for neovim 0.5 lsp support and
a clean starting point to rethink my configuration and used plugins, maybe try
some new stuff.

However, it was a very important subject to me that none all the experimentation
and restructuring should interfere with my working setup.

So I came up with a simple wrapper script which can be used to install and
update neovim nightly and use and improve the bundled configuration in the same
path the script is in.

Here are the necessary steps to use it

```
export NVIM_NIGHTLY_DIR="$HOME/.config/nvim/nightly"
mkdir -p "$NVIM_NIGHTLY_DIR"
cd "$NVIM_NIGHTLY_DIR"
git clone https://github.com/Buckmeister/nvim-nightly.git .
./nvim_nightly.sh
```

Optionally, you can alias the script by adding this to your shell
configuration

```
alias nvn="$NVIM_NIGHTLY_DIR/nvim_nightly.sh"
```

Or symlink it to some directory included in your $PATH. For example:

```
ln -s "$NVIM_NIGHTLY_DIR/nvim_nightly.sh" "$HOME/.local/bin/nvn"
```

In order to perform an update of neovim's binary nightly distribution, use the
'-u' command line parameter.

```
nvn -u
```

At this time, the script assumes that it is executed under mac os. However the
adjustments needed to are a matter of simply changing the vars in the first line
of the script accordingly to the needed vars for your platform.

Have fun!
