call plug#begin("~/.config/nvim/plugged")

    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-fugitive'

    Plug 'dracula/vim'

call plug#end()

"***************
"" Common settings
"***************
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

set shiftwidth=4                " Indent width when using <>
set expandtab                   " Automatically turn tab to space

"***************
"" Appearance
"***************
"set colorcolumn=80,100,120                     " Limit rulers
set ruler

"***************
"" NERDTree Configuration
"***************
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <silent> <F3> :NERDTreeToggle<CR>
