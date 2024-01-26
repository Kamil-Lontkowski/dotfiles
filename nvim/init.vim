call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Statur bar
Plug 'vim-airline/vim-airline-themes'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Theme
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " CTRL + N for multiple cursors
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'scalameta/nvim-metals'
Plug 'nvim-lua/plenary.nvim' " For metals
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'ThePrimeagen/vim-be-good' " Mini game to learn vim motions
Plug 'mbbill/undotree'

" LSP Support
Plug 'neovim/nvim-lspconfig'                           " Required
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
Plug 'williamboman/mason-lspconfig.nvim'               " Optional

" Autocompletion
Plug 'hrsh7th/nvim-cmp'     " Required
Plug 'hrsh7th/cmp-nvim-lsp' " Required
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lua'

" Snippets
Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'     " Required

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

" autopairs
Plug 'windwp/nvim-autopairs'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'


call plug#end()

" nnoremap <silent> gd          <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K           <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gi          <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gr          <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gds         <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gws         <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap <silent> <leader>rn  <cmd>lua vim.lsp.buf.rename()<CR>
" nnoremap <silent> <leader>f   <cmd>lua vim.lsp.buf.formatting()<CR>
" nnoremap <silent> <leader>ca  <cmd>lua vim.lsp.buf.code_action()<CR>
" nnoremap <silent> <leader>ws  <cmd>lua require'metals'.worksheet_hover()<CR>
" nnoremap <silent> <leader>a   <cmd>lua require'metals'.open_all_diagnostics()<CR>
" nnoremap <silent> <space>d    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
" nnoremap <silent> [c          <cmd>lua vim.lsp.diagnostic.goto_prev { wrap = false }<CR>
" nnoremap <silent> ]c          <cmd>lua vim.lsp.diagnostic.goto_next { wrap = false }<CR>


colorscheme catppuccin-mocha
let g:airline_theme = 'catppuccin'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

lua require("shaggy")

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif " Tu jest error przy otwieraniu quickfix


" set shell=pwsh.exe
" set shellxquote=
" set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy RemoteSigned\ -Command\ [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;
" let &shellquote   = ''
" let &shellpipe    = '| Out-File -Encoding UTF8 %s'
" let &shellredir   = '| Out-File -Encoding UTF8 %s'
