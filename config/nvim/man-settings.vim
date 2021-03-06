function! CloseWin()
  silent try | close | catch | bd | endtry
endfunction

function! s:man_settings() abort
  " Quit with error code if there is only one line in the buffer
  " (i.e., manpage not found)
  if line('$') == 1 | cquit | endif

  silent only
  setlocal readonly
  setlocal nomodifiable
  setlocal noswapfile
  setlocal noexpandtab

  setlocal tabstop=8
  setlocal softtabstop=8
  setlocal shiftwidth=8
  setlocal signcolumn=no
  setlocal nolist
  if exists('+colorcolumn')
    setlocal colorcolumn=0
  endif

  map <buffer> q <cmd>call CloseWin()<CR>

  highlight OverLength ctermbg=none guibg=none
endfunction

autocmd FileType man call s:man_settings()
