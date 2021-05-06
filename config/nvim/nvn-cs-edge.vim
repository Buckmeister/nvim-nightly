set background=dark

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  let g:edge_enable_italic = 1
else
  let g:edge_disable_italic_comment = 1
endif

let g:edge_style = 'aura'
let g:edge_cursor = 'auto'
let g:edge_sign_column_background = 'none'
let g:edge_transparent_background = 1
let g:edge_diagnostic_text_highlight = 1
let g:edge_diagnostic_line_highlight = 1
let g:edge_better_performance = 1
silent! colorscheme edge
