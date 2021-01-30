autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ defx#is_directory() ?
  \ defx#do_action('open_directory') :
  \ defx#do_action('multi', [['open', 'vsplit'], 'quit']) . ':on<CR>'
  nnoremap <silent><buffer><expr> y
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#is_directory() ?
  \ defx#do_action('open_tree', 'toggle') :
  \ defx#do_action('multi', [['open', 'vsplit'], 'quit']) . ':on<CR>'
  nnoremap <silent><buffer><expr> v
  \ defx#is_directory() ?
  \ defx#do_action('open_directory') :
  \ defx#do_action('multi', [['open', 'vsplit'], 'quit'])
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> A
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> a
  \ defx#do_action('new_file')
 nnoremap <silent><buffer><expr> m
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('toggle_columns',
  \                'icons:indent:filename:type:size:time')
  nnoremap <silent><buffer><expr> t
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> s
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yp
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ,
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#is_directory() ?
  \ defx#do_action('open_tree', 'toggle') :
  \ ''
  nnoremap <silent><buffer><expr> <BS>
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space><Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

function! CreateCenteredDefxWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}
    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    let s:whnd = nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4

    call defx#custom#option('_', {
          \ 'winwidth': opts.width,
          \ 'winheight': opts.height,
          \ 'wincol': opts.col,
          \ 'winrow': opts.row,
          \ 'split': 'floating',
          \ 'columns': 'icons:indent:filename:type',
          \ 'buffer_name': 'defx',
          \ 'show_ignored_files': 0,
          \ 'toggle': 0,
          \ 'resume': 1
          \ })

    Defx

    setl norelativenumber
    setl nonumber
    setl termguicolors
    hi Cursor blend=100
    setl guicursor+=a:Cursor/lCursor

    augroup cls
      autocmd!
      au BufHidden <buffer> call nvim_win_close(s:whnd , v:true) | hi Cursor blend=0 
    augroup END
endfunction

nnoremap <silent><leader>e <cmd>call CreateCenteredDefxWindow()<CR>
