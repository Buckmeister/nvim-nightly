set background=dark

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  let g:everforest_enable_italic = 1
else
  let g:everforest_disable_italic_comment = 1
endif

let g:everforest_background = 'hard'
let g:everforest_cursor = 'auto'
let g:everforest_transparent_background = 1
let g:everforest_sign_column_background = 'none'
let g:everforest_diagnostic_text_highlight = 1
let g:everforest_diagnostic_line_highlight = 1
let g:everforest_better_performance = 1

silent! colorscheme everforest
