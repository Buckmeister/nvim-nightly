fun! s:match_overlength()
  if &ft =~ 'man|text'
    return
  endif
  match OverLength /%82.*/
endfun

augroup overlength
  autocmd!
  autocmd BufEnter * highlight OverLength ctermbg=167 guibg=#592929
  autocmd BufEnter * call s:match_overlength()
augroup end
