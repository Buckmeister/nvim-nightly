if empty(glob('$NVN_DIR/local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo "$NVN_DIR/local/share/nvim/site/autoload/plug.vim" --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | qa!
endif
