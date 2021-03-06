call plug#begin(stdpath('data') . '/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kristijanhusak/defx-icons'
Plug 'mattn/emmet-vim'
Plug 'neovim/nvim-lspconfig'
Plug 'neovimhaskell/haskell-vim'
Plug 'norcalli/snippets.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ObserverOfTime/coloresque.vim'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
Plug 'ryanoasis/vim-devicons'
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tamago324/compe-zsh'
Plug 't9md/vim-choosewin'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-airline/vim-airline'

Plug 'microsoft/vscode'
Plug g:plugs['vscode'].dir.'extensions/java'
Plug g:plugs['vscode'].dir.'extensions/javascript'
Plug g:plugs['vscode'].dir.'extensions/typescript-basics'
Plug g:plugs['vscode'].dir.'extensions/cpp'
Plug g:plugs['vscode'].dir.'extensions/csharp'
Plug g:plugs['vscode'].dir.'extensions/markdown-basics'
Plug g:plugs['vscode'].dir.'extensions/swift'
Plug g:plugs['vscode'].dir.'extensions/bat'
Plug g:plugs['vscode'].dir.'extensions/powershell'

call plug#end()
