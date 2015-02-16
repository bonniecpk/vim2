" START: Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

if has("autocmd") 
  filetype indent plugin on 
endif 

syntax on
" END: Pathogen load

set ic
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set number
set hlsearch
set hidden
set nocompatible 
set cursorline
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Set autocomplete filepath when typing in normal mode
set wildmode=longest,list,full
set wildmenu

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

colors torte
colorscheme desert

filetype plugin on

au BufNewFile,BufRead *.skim  set filetype=slim
au BufNewFile,BufRead *.rabl  set filetype=ruby
au BufNewFile,BufRead *.hamlc set filetype=haml
