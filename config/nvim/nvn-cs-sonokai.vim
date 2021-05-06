set background=dark

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  let g:sonokai_enable_italic = 1
else
  let g:sonokai_disable_italic_comment = 1
endif

let g:sonokai_style = 'maia'
let g:sonokai_cursor = 'auto'
let g:sonokai_sign_column_background = 'none'
let g:sonokai_menu_selection_background = 'red'
let g:sonokai_transparent_background = 1
let g:sonokai_diagnostic_text_highlight = 1
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_material_better_performance = 1
silent! colorscheme sonokai
