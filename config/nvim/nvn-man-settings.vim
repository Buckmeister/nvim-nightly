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
  setlocal signcolumn=yes
  setlocal nonumber
  setlocal nolist
  if has('colorcolumn')
    setlocal colorcolumn=0
  endif

  map <buffer> q <cmd>quit<CR>
endfunction

autocmd FileType man call s:man_settings()
