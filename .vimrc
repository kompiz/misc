" Make shift+enter insert line without entering insert mode (note: shift+enter added in iterm2)
nnoremap <S-Enter> moO<Esc>`o

" Make spacebar insert blankspace
nnoremap <space> i<space><esc>

" Make ctrl+e and ctrl+a work
map <C-E> $
map <C-A> 0|

" Make f w also work with ctrl+left arrow and ctrl+right arrow
map f w

syn on
set background=dark
