" Plugin section

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'


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

call plug#end()

" Colors section
colorscheme nord


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

" C++ 
nnoremap <C-c> :!clear &&test make<CR>


" Run python 
nmap <leader>r <Esc>:w<CR>:!clear;python2 %<CR>

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
nnoremap <leader>a :w <CR> :!git add %<CR>
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




"Status line
set laststatus=2
set statusline=
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%{b:gitbranch}
set statusline+=\ 
set statusline+=|
set statusline+=\ 
set statusline+=%k
set statusline+=%=
set statusline+=%m
set statusline+=%f
set statusline+=%y

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '
', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END



