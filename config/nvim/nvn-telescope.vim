nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fl <cmd>lua require('telescope.builtin').lsp()<cr>
nnoremap <Leader>fd <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>

