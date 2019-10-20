set number
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→
set list
syntax on
colorscheme desert

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
