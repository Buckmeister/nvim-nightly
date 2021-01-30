if empty(glob('$NIGHTLY_DIR/local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $NIGHTLY_DIR/local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | qa!
endif
