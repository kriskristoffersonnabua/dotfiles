filetype plugin indent on
syntax on
set nocompatible
set noswapfile
" set noshowmode
set encoding=UTF-8
" set number
set mouse=a
" set ruler
" set relativenumber
set splitbelow
set splitright
set backspace=indent,eol,start
set cursorline
set laststatus=2

set showmatch
set wildmenu
set wildignore+=node_modules/**,dist/**

set hlsearch
set incsearch

set path+=**

" set listchars=tab:\➜\ ,eol:⌐
set listchars=tab:\↦\ ,eol:⌐
set listchars+=precedes:·
set lcs+=space:·
" set list

set ignorecase

set smartindent
set tabstop=2
set shiftwidth=2
set noexpandtab

"set window view height
set previewheight=10

"custom map keys
let mapleader= ";"
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
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
nnoremap <leader>t :Texplore<CR>
nnoremap <leader><space> :Dash<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>j <C-w>
nnoremap <leader>1 :NERDTreeToggle<CR>
nnoremap <leader>z :CtrlPNotes<CR>
vnoremap // y/<C-R>"<CR>
imap ; ;
"fugitive plugin mapping
set diffopt+=vertical
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gi :Gwrite<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
" nnoremap <silent> K :call CocAction('doHover')<CR>

"plugins sections
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'

"LSP 
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

"search plugins
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'skwp/greplace.vim'

Plug 'christoomey/vim-conflicted'
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
Plug 'vim-scripts/rename.vim'

"php plugins
Plug 'stephpy/vim-php-cs-fixer'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

"colorscheme
Plug 'crusoexia/vim-monokai'
Plug 'jsit/toast.vim'
Plug 'sjl/badwolf'
Plug 'srcery-colors/srcery-vim'
Plug 'NLKNguyen/papercolor-theme'

"snippets
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'tellijo/vim-react-native-snippets'

"productivity
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
" Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}           
"typescript
Plug 'leafgarland/typescript-vim'
call plug#end()

"functions
function! VimInit()
		if exists('+termguicolors')
			let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
			let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
			set termguicolors
		endif
		" set t_Co=256
		set background=dark

		colo toast

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
let g:python3_host_prog = '/usr/local/bin/python3.9'

" vim move
let g:move_key_modifier = 'C'

" prettier
let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
let g:prettier#autoformat = 0
let g:prettier#config#semi = 'false'
let g:prettier#config#tab_width = 2
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'false'
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

let g:indentLine_enabled = 1

"ctrlp
"ignore node_modules, DS_Store and git folder from searching
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|android\|ios\'
let g:ctrlp_match_window = 'max:5,min:2'

"git gutter settings
let g:gitgutter_enabled = 1

cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ **/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>

let g:ctrlp_extensions = ['notes']

"NerdTree configurations
let NERDTreeHijackNetrw = 0

"emmet
" let g:user_emmet_leader_key='<C-Q>'

"Greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"php: auto format fixer settings
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>
" autocmd BufWritePre *.php :call PhpCsFixerFixFile()<CR>
"pdv: php documentation plugin
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <leader>pd :call pdv#DocumentWithSnip()<CR>
