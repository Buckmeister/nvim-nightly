nnoremap <silent> <Leader>gh :Lspsaga lsp_finder<CR>

nnoremap <silent> <Leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent> <Leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

nnoremap <silent> <Leader>K :Lspsaga hover_doc<CR>

nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

nnoremap <silent> <Leader>gs :Lspsaga signature_help<CR>

nnoremap <silent> <Leader>rn :Lspsaga rename<CR>
nnoremap <silent> <Leader>gd :Lspsaga preview_definition<CR>

nnoremap <silent> <Leader>cd :Lspsaga show_line_diagnostics<CR>

nnoremap <silent> ö :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> Ö :Lspsaga diagnostic_jump_prev<CR>
