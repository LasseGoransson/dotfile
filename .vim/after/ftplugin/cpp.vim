
" C++ 
nnoremap <C-c> :wa <CR> :!clear && cmake . -B build &&  cmake --build build/ <CR>

nnoremap <Leader>r :!clear && ./build/project<CR>

