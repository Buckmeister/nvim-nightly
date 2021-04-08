let g:airline_powerline_fonts = 1

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ["\uf0fe:", "\uf14c:", "\uf146:"]

let g:airline#extensions#tabline#enabled = 1

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  let g:airline_left_sep = "\uE0B4"
  let g:airline_right_sep = "\uE0B6"
else
  let g:airline_left_sep = "\u205E"
  let g:airline_right_sep = "\u205E"
endif
