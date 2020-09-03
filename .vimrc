" Plugin section

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'jdsimcoe/abstract.vim'


" Allows sending text to other windows
Plug 'jpalardy/vim-slime'


Plug 'lervag/vimtex'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


Plug 'vim-scripts/vim-auto-save'


Plug 'rhysd/vim-grammarous'


call plug#end()

" Colors section
colorscheme forest-night


" Settings
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set number
set relativenumber
set splitright
set t_Co=256

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" Define where slime sends output
let g:slime_target = "vimterminal"

" Define leader key
let mapleader= ","
let maplocalleader= "-"


" Latex setup
let g:vimtex_view_method = 'zathura'
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_automatic=0
"let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:vimtex_quickfix_mode = 0
set conceallevel=1
let g:tex_conceal='abdmg'
" Set default latex type
let g:tex_flavor = "latex"
" Disable warnings about missing clientserver, since none is available
"let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=0',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" Remaps
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
noremap  tn  :tabnew<CR>
nnoremap  <leader>q   :Explore<CR>




" Spell check
" Fix mistake
noremap <Leader>f z= 
" Add to dict
noremap <Leader>a zg
" Next mistake
noremap <Leader>n ]s
" Enable check
nnoremap <Leader>sp :set spell spelllang=en_us<CR>
" Quick edit
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" GIT
"nnoremap <leader>a :w <CR> :!git add %<CR>

" Edit type commands
nnoremap <Leader>fe :vsp ~/.vim/after/ftplugin/%:e.vim<CR> 

 
" Yank visual to clipboard
vnoremap <Leader>y :w !xclip -selection clipboard<CR><CR>

"
" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Ultisnips
let g:UltiSnipsSnippetsDir = "~/.vim/myUltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "myUltiSnips"]
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<Leader>e'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Screenshot
 let @s=':read! screenshot.sh %'
" Leader commands






