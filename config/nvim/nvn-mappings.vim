let mapleader = " "
nnoremap <Space> <Nop>

map <Up>    :tabn<CR>
map <Down>  :tabp<CR>
map <Left>  :bp<CR>
map <Right> :bn<CR>

map <Leader>w :update<CR>
map <Leader>q :bd<CR>
map <Leader># :let @/ = ""<CR>
map <Leader>ba :.!figlet<CR>

xnoremap J :move '<-2<CR>gv-gv
xnoremap K :move '<+1<CR>gv-gv

vmap < <gv
vmap > >gv

nnoremap ü <C-]>
nnoremap Ü <C-O>

nnoremap <leader>lcd :lcd %:h<CR>
nnoremap <leader>tcd :tcd %:h<CR>

vnoremap <leader>p "_dP

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Open files located in the same dir in with the current file is edited
nnoremap <leader>ew :e <C-R>=expand("%:.:h") . "/"<CR>

function! OnTabEnter(path)
  if isdirectory(a:path)
    let dirname = a:path
  else
    let dirname = fnamemodify(a:path, ":h")
  endif
  execute "tcd ". dirname
endfunction

autocmd TabNewEntered * call OnTabEnter(expand("<amatch>"))

" Use visual selection as search term
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  call histadd('/', substitute(@/, '[?/]', '\="\\%d".char2nr(submatch(0))', 'g'))
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>/<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>?<CR>
