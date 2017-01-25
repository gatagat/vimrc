" Inserts a breakpoint so that running the python script in the terminal
" starts the ipython debugger.

map <silent> <leader>b oimport pdb; pdb.set_trace()<esc>
"map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
