syntax on
filetype plugin indent on
set nocompatible
set noswapfile
set noshowmode
set encoding=UTF-8
" set number
" set relativenumber
set splitbelow
set ruler
set backspace=indent,eol,start
set cursorline
set laststatus=2

set showmatch
set wildmenu
set wildignore+=node_modules/**,dist/**

set hlsearch
set incsearch

set path+=**

set listchars=tab:\·\·,eol:⌐
set listchars+=precedes:·
set lcs+=space:·
" set list

set ignorecase

set smartindent
set tabstop=2
set shiftwidth=2
set noexpandtab

"custom map keys
let mapleader= ";"
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <c-h> :bprev<CR>
nnoremap <c-l> :bnext<CR>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
inoremap <leader>c <esc>
vnoremap <leader>c <esc>
nnoremap <leader>f :Sexplore<CR>
nnoremap <leader>fb :rightbelow split<CR>:Explore<CR>
nnoremap <leader>ft :topleft split<CR>:Explore<CR>
nnoremap <leader>fr :botright split<CR>:Explore<CR>
nnoremap <leader>F :Vexplore<CR>
nnoremap <leader>l :set list!<CR>
nnoremap zz z.
nnoremap <leader>@ /TODO:<CR>
nnoremap <leader>t :Texplore<CR>
nnoremap <leader><space> :Dash<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>m :GitGutterToggle<CR>
nnoremap <leader>5 :Goyo<CR>
" nnoremap <leader>l :set list!<CR>
nnoremap <leader>j <C-w>
vnoremap // y/<C-R>"<CR>
imap ; ;
"fugitive plugin mapping
set diffopt+=vertical
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gi :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

"plugins sections
call plug#begin('~/dotfiles/vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
Plug 'jiangmiao/auto-pairs'

"search plugins
Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-vinegar'
Plug 'matze/vim-move'
Plug 'xolox/vim-misc'
Plug 'mxw/vim-jsx'
Plug 'rizzatti/dash.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'tomtom/tlib_vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'alvan/vim-closetag'

"php plugins
Plug 'StanAngeloff/php.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'

"colorscheme
Plug 'benburrill/potato-colors'
Plug 'srcery-colors/srcery-vim'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tellijo/vim-react-native-snippets'

"productivity
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
" Plug 'w0rp/ale'
call plug#end()

"functions
function VimInit()
		set background=dark " or light if you prefer the light version
		colo srcery
		if !has('gui_running')
			set t_Co=256
		endif
		fixdel
    if 0 == argc()
        Explore
    endif
endfunction

"set custom cmds here

"set autocmds here
autocmd VimEnter * call VimInit()

" Python environment setup
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" vim move
let g:move_key_modifier = 'C'

" prettier
let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
let g:prettier#autoformat = 0
let g:prettier#config#semi = 'false'
let g:prettier#config#tab_width = 4
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'true'
let g:prettier#bracket_spacing = 'true'
let g:prettier#config#print_width = 80
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

" vim javascript variables
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" vim-closetag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.xml,*.php,*.ts'

"ultisnip settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="horizontal"

"youcompleteme settings
let g:ycm_autoclose_preview_window_after_completion = 1

"git gutter
let g:gitgutter_enabled = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed = '*•'

let g:lightline = { 'colorscheme': 'srcery_drk' }

let g:indentLine_enabled = 1

"ctrlp
"ignore node_modules, DS_Store and git folder from searching
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|android\|ios\'

cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ **/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>

"vim-javascript conceal settings
set conceallevel=1
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_null = "ø"
let g:javascript_conceal_undefined = "¿"
let g:javascript_conceal_NaN = "ℕ"
