if (has("termguicolors"))
  set termguicolors
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set expandtab
set ic
set list
set nocompatible
set noeol
set noshowmode
set nowrap
set number
set showcmd
set smartindent
set splitbelow
set splitright

set backspace=indent,eol,start
set encoding=utf-8
set laststatus=2
set listchars=nbsp:¬,extends:»,precedes:«,trail:•
set mouse+=a
set shiftwidth=2
set softtabstop=2
set t_Co=256
set tabstop=2
set term=xterm-256color
set termencoding=utf-8
set timeoutlen=3000
set ttymouse=xterm2
set wildignore+=tags,doc,tmp,log

set backupdir^=~/.vim/_backup//
set directory^=~/.vim/_temp//

set rtp+=~/.vim/bundle/Vundle.vim

let mapleader='_'

let g:loaded_netrw=1
let g:loaded_netrwPlugin=1

filetype off

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'

Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'neomake/neomake'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'shime/vim-livedown'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()

filetype plugin indent on

nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

syntax on

" airblade/vim-gitgutter

set updatetime=500

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = '~'

let g:gitgutter_override_sign_column_highlight = 0

" junegunn/fzf.vim

map <C-T> :FZF<CR>

" mileszs/ack.vim

map <C-F> :Ack<space>

" neomake/neomake

call neomake#configure#automake('nrw')
let g:neomake_open_list = 2
let g:neomake_python_enabled_makers = ['pylint']

" rakr/vim-one

colorscheme one
hi Normal guibg=NONE ctermbg=NONE

set background=dark

" scrooloose/nerdtree

map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.git$[[dir]]']

autocmd vimenter * NERDTree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" shime/vim-livedown

let g:livedown_port = 1337

" vim-airline/vim-airline

let g:airline_theme='one'
let g:airline_skip_empty_sections = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Xuyuanp/nerdtree-git-plugin

let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ 'Modified': '*',
  \ 'Staged': '+',
  \ 'Untracked': '*',
  \ 'Renamed'   :'>',
  \ 'Unmerged'  :'=',
  \ 'Deleted'   :'x',
  \ 'Ignored'   :'',
  \ 'Unknown'   :'?' }
