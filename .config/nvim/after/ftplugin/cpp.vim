
" C++ 
nnoremap <C-c> :wa <CR> :!clear && cmake . -B build &&  cmake --build build/ <CR>
"nnoremap <C-c> :vert ter ++shell ++close cmake . -B build &&  cmake --build build/  || read<CR>
"inoremap <C-c> <Esc> :wa <CR> :!clear && cmake . -B build &&  cmake --build build/ <CR>

" nnoremap <Leader>r :!clear && ./build/project<CR>
" Run compiled executable
nnoremap <Leader>r :!clear && ./build/$(cat CMakeLists.txt \| grep -i add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")<CR>

"command Symlink execute "! ln -s build/compile_commands.json ."
