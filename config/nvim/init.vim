let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

try

if !has('nvim-0.5')
  echom "Incompatible Version:"
  echom " -> Please use neovim > 0.5"
  call input("Press any key to continue") | quit
endif

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

" == which-key ==
source $VIMUSERRUNTIME/nvn-which-key.vim

" == neoformat ==
source $VIMUSERRUNTIME/nvn-neoformat.vim

" == floaterm ==
source $VIMUSERRUNTIME/nvn-floaterm.vim

" == vim-airline ==
source $VIMUSERRUNTIME/nvn-airline.vim

" == colorscheme ==
source $VIMUSERRUNTIME/nvn-cs-gruvbox-material.vim
"
" == the following colorschemes are preinstalled ==
" == and can be activated by uncommenting one of ==
" == the following configuration files below ... ==
"
" source $VIMUSERRUNTIME/nvn-cs-edge.vim
" source $VIMUSERRUNTIME/nvn-cs-everforest.vim
" source $VIMUSERRUNTIME/nvn-cs-gruvbox-material.vim
" source $VIMUSERRUNTIME/nvn-cs-sonokai.vim
"

" == custom highlights ==
source $VIMUSERRUNTIME/nvn-custom-highlights.vim

" == init.lua ==
lua require('init')

catch
  echo 'Caught "' . v:exception . '" in ' . v:throwpoint
endtry
