autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
autocmd BufEnter * match OverLength /\%80v.*/
