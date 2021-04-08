syntax on
filetype plugin indent on

set hlsearch
set incsearch
set number
set relativenumber
set cursorline
set cursorcolumn
set showmode
set showmatch
set textwidth=80
set formatoptions-=t
set nowrap
set colorcolumn=+1
set ignorecase
set smartcase
set smarttab
set smartindent
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=2
set scrolloff=8
set sidescrolloff=5
set mouse=a
set history=1000
set completeopt=menuone,noselect
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set splitbelow splitright
set cmdheight=1
set nobackup
set showcmd
set list
set listchars=tab:>·,trail:·
set title
set titlestring=nvim\ %-15.20F\ %a%r%m
set titlelen=70
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes

let colorterm=$COLORTERM
if colorterm=="truecolor" || colorterm=="24bit"
  if has('termguicolors')
    set termguicolors
  endif
endif

set gfn=FiraCode\ Nerd\ Font:h14.00
