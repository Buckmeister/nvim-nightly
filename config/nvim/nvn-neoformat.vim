let g:shfmt_opt="-ci"

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
