let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

try
" == setup ==
source $VIMUSERRUNTIME/nvn-setup.vim

" == basic stuff ==
source $VIMUSERRUNTIME/nvn-general.vim

" == spell ==
source $VIMUSERRUNTIME/nvn-spell.vim

" == overlength ==
source $VIMUSERRUNTIME/nvn-overlength.vim

" == personal mappings ==
source $VIMUSERRUNTIME/nvn-mappings.vim

" == plug ==
source $VIMUSERRUNTIME/nvn-plug.vim

" == vim-vsnip ==
source $VIMUSERRUNTIME/nvn-vsnip.vim

" == nvim-compe ==
source $VIMUSERRUNTIME/nvn-compe.vim

" == goyo ==
source $VIMUSERRUNTIME/nvn-goyo.vim

" == limelight ==
source $VIMUSERRUNTIME/nvn-limelight.vim

" == vim-easy-align ==
source $VIMUSERRUNTIME/nvn-easy-align.vim

" == emmet ==
source $VIMUSERRUNTIME/nvn-emmet.vim

" == haskell-vim ==
source $VIMUSERRUNTIME/nvn-haskell.vim

" == telescope.nvim ==
source $VIMUSERRUNTIME/nvn-telescope.vim

" == manfile settings ==
source $VIMUSERRUNTIME/nvn-man-settings.vim

" == vim-choosewin ==
source $VIMUSERRUNTIME/nvn-choosewin.vim

" == UltiSnips ==
source $VIMUSERRUNTIME/nvn-ultisnips.vim

" == Rnvimr ==
source $VIMUSERRUNTIME/nvn-rnvimr.vim

" == defx ==
source $VIMUSERRUNTIME/nvn-defx.vim

" == neoformat ==
source $VIMUSERRUNTIME/nvn-neoformat.vim

" == colorscheme ==
" source $VIMUSERRUNTIME/nvn-cs-edge.vim
" source $VIMUSERRUNTIME/nvn-cs-everforest.vim
source $VIMUSERRUNTIME/nvn-cs-gruvbox-material.vim
" source $VIMUSERRUNTIME/nvn-cs-sonokai.vim

" == vim-airline ==
source $VIMUSERRUNTIME/nvn-airline.vim

" == init.lua ==
lua require('init')

catch
  echo 'Caught "' . v:exception . '" in ' . v:throwpoint
endtry
