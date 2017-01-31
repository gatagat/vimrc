" Inserts a breakpoint so that running the python script in the terminal
" starts the ipython debugger.

map <silent> <leader>b Oimport pdb; pdb.set_trace()<esc>
map <silent> <leader>B Oimport ipdb; ipdb.set_trace()<esc>
