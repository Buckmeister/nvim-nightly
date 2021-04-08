function! CloseWin()
  if len(getbufinfo({'buflisted':1})) == 1
    quit
  else
    bd
  endif
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
  setlocal textwidth=160
  setlocal tabstop=8
  setlocal softtabstop=8
  setlocal shiftwidth=8
  setlocal signcolumn=no
  setlocal number
  setlocal nolist
  if has('colorcolumn')
    setlocal colorcolumn=0
  endif

  map <buffer> q <cmd>call CloseWin()<CR>

  highlight OverLength ctermbg=none guibg=none

  augroup mansettings
    autocmd!
    autocmd BufEnter man match OverLength /\%160v.*/
  augroup END
endfunction

autocmd FileType man call s:man_settings()
