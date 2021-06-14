syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set number
set hlsearch
set ruler
set ai
set is
set autoindent
set ignorecase
set smartcase
set backspace=2
set splitbelow
set splitright
let $CXXFLAGS="-o -Wall -std=c++17"
nnoremap <F4> :make %<<CR>
nnoremap <F5> :!./%<<CR>
noremap <F9> :au BufNewFile *.cpp r ~/.vim/templates/skeleton.cpp<CR>

colorscheme peachpuff
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE
highlight Comment ctermfg=green
hi Search cterm=NONE ctermfg=Black ctermbg=Cyan


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"buffer
nnoremap <Leader>b :ls<CR>:b<Space>

set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

hi User4 term=inverse,bold cterm=inverse,bold ctermfg=red
hi User3 term=inverse,bold cterm=inverse,bold ctermfg=blue

map <Leader>/ :noh<CR>
set tags=tags
