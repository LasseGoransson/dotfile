
" C++ 
nnoremap <C-c> :wa <CR> :!clear && cmake . -B build &&  cmake --build build/ <CR>
"nnoremap <C-c> :vert ter ++shell ++close cmake . -B build &&  cmake --build build/  || read<CR>
"inoremap <C-c> <Esc> :wa <CR> :!clear && cmake . -B build &&  cmake --build build/ <CR>

" nnoremap <Leader>r :!clear && ./build/project<CR>
" Run compiled executable
nnoremap <Leader>r :!clear && ./build/$(cat CMakeLists.txt \| grep -i add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")<CR>

"command Symlink execute "! ln -s build/compile_commands.json ."
"echo test
"
nnoremap <Leader>d :!docker exec -w $(pwd -P) --interactive $(cat /tmp/rovi/rovi_container_id) bash -c './build/$(cat CMakeLists.txt \| grep -i add_executable \| sed -E "s/.*\(\s*(\S+).*/\1/g")'<CR>
 
nnoremap <C-d> :!docker exec -w $(pwd -P) --interactive $(cat /tmp/rovi/rovi_container_id) bash -c 'cmake . -Bbuild &&  cmake --build build/'<CR>
