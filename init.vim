if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }"Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sharkdp/fd'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'craigemery/vim-autotag'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()
if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif
" runs auto tag for ctags  
let g:autotagTagsFile=".tags"
" Use tab for trigger completion with characters ahead and navigate.

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

autocmd FileType gitcommit setlocal spell
syntax enable
set spell
set cursorline
set laststatus=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set smartindent
set nu
set number
set incsearch
set nohlsearch
set statusline=
let &titlestring = @%
set nofixendofline
set nowrap
set relativenumber             " Show relative line numbers
set nobackup
set undodir=~/.config/nvim/undo
set undofile
set signcolumn=yes
 " ctags optimization
 set autochdir
" set tags=~/Documents/VIViD/showchoir/showchoirweb/tags;
set tags=./tags;
let @/ = ""
let &scrolloff = 8
 colorscheme gruvbox
 
 "colors for popups
highlight Pmenu ctermbg=234 guibg=#1D1D1D
let mapleader = " "
inoremap lll console.log()<Left>
"Write file with ctrl s
inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> <esc>:w<CR>
nnoremap <leader>pv :Vex<CR>:vertical resize 35<CR>

"Move lines up and down in visual mode 
vnoremap <S-C-Up>   :m '<-2<CR>gv=gv
vnoremap <S-C-Down> :m '>+1<CR>gv=gv
" source vimrc
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
"Search if in git repo 
"nnoremap <C-p> :GFiles<CR>
"nnoremap <C-o> :Buffers<CR>


"Telescope
nnoremap <C-p> <cmd>Telescope git_files prompt_prefix=🔍<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap gh <cmd>Telescope find_files hidden=true<cr>


nnoremap <leader>pf :Files<CR> 
" jump through quick fix lists
nnoremap <C-j> :cprev<CR> 
nnoremap <C-k> :cnext<CR> 
"clear higlights 
nnoremap <leader>h :noh<CR> 
"prettier
command! -nargs=0 Gp :CocCommand prettier.forceFormatDocument
nnoremap gp :silent %!prettier --stdin-filepath %<CR>
"F5 open buffer list and jump to 
"nnoremap <F5> :buffers<CR>:buffer<Space>
inoremap $  ${}<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()
inoremap => = () => {};
inoremap /* /* */
