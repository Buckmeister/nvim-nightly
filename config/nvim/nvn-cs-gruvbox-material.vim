set background=dark

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  let g:gruvbox_material_enable_bold = 1
  let g:gruvbox_material_enable_italic = 1
else
  let g:gruvbox_material_disable_italic_comment = 1
endif

let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_better_performance = 1

silent! colorscheme gruvbox-material

