let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

try
" == setup ==
source $VIMUSERRUNTIME/setup.vim

" == basic stuff ==
source $VIMUSERRUNTIME/general.vim

" == spell ==
source $VIMUSERRUNTIME/spell.vim

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

" == vim-vsnip ==
source $VIMUSERRUNTIME/vsnip.vim

" == nvim-compe ==
lua require("nvim-compe")
source $VIMUSERRUNTIME/nvim-compe.vim

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

" == telescope.nvim ==
source $VIMUSERRUNTIME/telescope.vim

" == coloresque ==
source $VIMUSERRUNTIME/coloresque.vim

" == lspkind-nvim ==
lua require('lspkind-nvim')

" == manfile settings ==
source $VIMUSERRUNTIME/man-settings.vim

" == vim-choosewin ==
source $VIMUSERRUNTIME/choosewin.vim

" == UltiSnips ==
source $VIMUSERRUNTIME/ultisnips.vim

" == defx ==
source $VIMUSERRUNTIME/defx.vim

" == neoformat ==
source $VIMUSERRUNTIME/neoformat.vim

" == java-syntax ==
source $VIMUSERRUNTIME/java-syntax.vim

" == vim-airline ==
source $VIMUSERRUNTIME/airline.vim

" == lsp-config ==
lua require("lsp-config")

" == nvim-lsputils ==
lua require('nvim-lsputils')

catch
  echo 'Caught "' . v:exception . '" in ' . v:throwpoint
endtry
