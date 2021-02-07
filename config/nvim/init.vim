let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

try
" == setup ==
source $VIMUSERRUNTIME/setup.vim

" == basic stuff ==
source $VIMUSERRUNTIME/general.vim

" == gui ==
source $VIMUSERRUNTIME/gui.vim

" == overlength ==
source $VIMUSERRUNTIME/overlength.vim

" == personal mappings ==
source $VIMUSERRUNTIME/mappings.vim

" == plug ==
source $VIMUSERRUNTIME/plug.vim

" == gruvbox ==
source $VIMUSERRUNTIME/gruvbox.vim

" == goyo ==
source $VIMUSERRUNTIME/goyo.vim

" == limelight ==
source $VIMUSERRUNTIME/limelight.vim

" == vim-easy-align ==
source $VIMUSERRUNTIME/easy-align.vim

" == emmet ==
source $VIMUSERRUNTIME/emmet.vim

" == haskell-vim ==
source $VIMUSERRUNTIME/haskell.vim

" == snippets.nvim ==
lua require('snippets-nvim')

" == coloresque ==
source $VIMUSERRUNTIME/coloresque.vim

" == vim-choosewin ==
source $VIMUSERRUNTIME/choosewin.vim

" == UtilSnips ==
source $VIMUSERRUNTIME/utilsnips.vim

" == defx ==
source $VIMUSERRUNTIME/defx.vim

" == neoformat ==
source $VIMUSERRUNTIME/neoformat.vim

" == java-syntax ==
source $VIMUSERRUNTIME/java-syntax.vim

" == vim-airline ==
source $VIMUSERRUNTIME/airline.vim

" == completion-nvim ==
source $VIMUSERRUNTIME/completion.vim

" == lsp ==
source $VIMUSERRUNTIME/lsp.vim
lua require("lsp-config")

catch
  echo 'Caught "' . v:exception . '" in ' . v:throwpoint
endtry
