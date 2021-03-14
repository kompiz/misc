" Make shift+enter insert line without entering insert mode (note: shift+enter added in iterm2)
nnoremap <S-Enter> moO<Esc>`o

" Make shift+spacebar insert blankspace
nnoremap <S-Space> i<Space><Esc>

" Make ctrl+e and ctrl+a work
map <C-E> $
map <C-A> 0|

" Make f w also work with ctrl+left arrow and ctrl+right arrow
map f w

syn on
set background=dark
