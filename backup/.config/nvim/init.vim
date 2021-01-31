set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --java-completer --rust-completer --ts-completer' }
Plugin 'udalov/kotlin-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""let g:ycm_show_diagnostics_ui = 0

set wrap
set linebreak

" use indents of 4 spaces, and have them copied down lines:
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set cindent
filetype indent off

" enable filetype detection:
filetype on

" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent
" * Keystrokes -- Insert Mode

" autocomplete
inoremap {<CR> {<CR>}<ESC>O
map <F5> :!bash test.sh <ESC>
set number
"set relativenumber

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
nnoremap <F6> :call WordProcessor() <ESC>


func! Lesser()
    map j gj
    map k gk
endfu
nnoremap <F7> :call Lesser() <ESC>

autocmd BufNewFile,BufRead *.ms :set filetype=groff
autocmd Filetype tex nnoremap <F12> :w <bar> :!pdflatex %:p <ESC>
autocmd Filetype groff nnoremap <F12> :w <bar> :!groff -ms %:r\.ms -T pdf >> %:r\.pdf <ESC>
autocmd Filetype tex,groff call Lesser()

syntax on
