let mapleader =","
" map <Esc>[B <Down>
" set term=xterm-256color
" if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
" echo "Downloading junegunn/vim-plug to manage plugins..."
" silent !mkdir -p ~/.config/nvim/autoload/
" silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
" " autocmd VimEnter * PlugInstall
" endif

call plug#begin('~/.config/nvim/plugged')

Plug 'norcalli/snippets.nvim'
Plug 'honza/vim-snippets'
Plug 'dcampos/nvim-snippy'
Plug 'gorbit99/codewindow.nvim'
Plug 'Yggdroot/indentLine'
Plug 'TimUntersberger/neogit'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'LukasPietzschmann/telescope-tabs'
Plug 'wbthomason/packer.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'jacoborus/tender.vim'
Plug 'vivien/vim-linux-coding-style'
Plug 'unblevable/quick-scope'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/vim-easy-align'
Plug 'wfxr/minimap.vim'
Plug 'gauteh/vim-cppman'
Plug 'folke/twilight.nvim'
Plug 'braindead-cc/bf-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ziglang/zig.vim'
Plug 'whonore/Coqtail' 
Plug 'drzel/vim-gui-zoom'
Plug 'Mofiqul/vscode.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'morhetz/gruvbox'
" Plug 'norcalli/nvim-colorizer.lua'
Plug 'ap/vim-css-color'
Plug 'gioele/vim-autoswap'
Plug 'tpope/vim-surround'
Plug 'kovetskiy/sxhkd-vim'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/auto-pairs-gentle'
call plug#end()

	filetype plugin indent on

	if !has('gui_running')
	  set t_Co=256
	endif

" Pmenu Settings
	highlight Pmenu ctermbg=241 ctermfg=white cterm=bold

" highlight Color
	hi Search cterm=NONE ctermfg=0 ctermbg=222

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Bullets Defining
	let g:bullets_enabled_file_types = [
	    \ 'markdown',
	    \ 'text',
	    \ 'gitcommit',
	    \ 'scratch',
	    \ 'rmd',
	    \ 'rmarkdown'
	    \]


" Fix indenting visual block
	vmap < <gv
	vmap > >gv

" center the search on the line it's found in.
	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap <c-c> :ColorizerAttachToBuffer<CR>

" Some basics:
	nnoremap c "_c
	set noruler
	set ic
	set nohlsearch
	set nocompatible
	set wrap
	set mouse=a
	set clipboard+=unnamedplus
	set go=a
	filetype plugin on
	syntax on
	set expandtab
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion
	set wildmode=longest,list,full
	let g:rehash256 = 1
	set t_Co=256
	set laststatus=0
	set noshowcmd

" Xreseources Commentry
	" autocmd FileType  xdefaults setlocal commentstring=!\ %s

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	red


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

	map <silent><space>e : NvimTreeToggle <CR>
	" map <silent><leader>f :CocCommand explorer --preset floating<cr>

	map <C-w>h <C-w>s
	nnoremap <C-q> <C-w>q

" Enable folding for Python
	set foldenable
	set foldmethod=manual
	set foldlevel=0

	nnoremap S :%s//g<Left><Left>
	vnoremap S :s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
hi Green guifg=#00ff00 ctermfg=green

"Compiler Run
	map <leader>c :w! \| !comp <c-r>%<CR><CR>
  " map <space>c :w! \| !compiler <c-r>%<CR>
  map <space>c :!compiler <c-r>%<CR>
	" map <space><space> :Files $HOME/Kode<CR>

	nnoremap <leader>p :!opout <c-r>%<CR><CR>

  "Clean some trash
	autocmd VimLeave *.tex,*.d,*.cpp,*.ml,*.hs,*.fsx !mlclear %
	autocmd VimLeave *.tex !texclear %
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

	map Y y$
	nnoremap <silent><S-k> gt
	nnoremap <silent><S-j> gT
	nnoremap <silent><C-s> <C-w>r
  nnoremap <C-l> <C-w>l
  nnoremap <C-h> <C-w>h

" Select all
   map <c-a> ggvG$
   imap <c-a> <ecs>ggvG$

" Insert in a () anywhere on the line (My own Creation)
	map <leader>; /(<CR>ci)

" Replace ex mode with gq
	map Q gq
  set shortmess+=c

nnoremap <silent> <C-b> : call ToggleBar() <CR>


" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" use alt + hjkl to resize windows
nnoremap <silent> <A-j> :resize -1<CR>
nnoremap <silent> <A-k> :resize +1<CR>
nnoremap <silent> <A-h> :vertical resize -1<CR>
nnoremap <silent> <A-l> :vertical resize +1<CR>

let s:state = 0
function! ToggleDefault()
	if s:state == 0
		" set notermguicolors
		set bg=dark
		colorscheme naysayer88
		let s:state = 1
	else
		" set termguicolors
		set bg=dark
		colorscheme naysayer88
		hi Normal guibg=#042327  
		hi LineNr guibg=#042327  
		highlight CursorLineNr gui=bold guibg=NONE
		let s:state = 0
	endif
endfunction


let s:bar = 0
function! ToggleBar()
	if s:bar == 0
		set noshowmode
		set laststatus=2
		let s:bar = 1
	else
		set laststatus=0
		" set noshowmode
		let s:bar = 0
	endif
endfunction


function Lines()
   let i=1 | '<,'>g/^/ s//\=i . " "/ | let i+=1
endfunction

" Current Path
  nnoremap <c-f> :FZF <CR>

	set bg=dark
	set termguicolors
	highlight CursorLineNr gui=bold guibg=NONE
	hi Normal guibg=NONE ctermbg=None

noremap Q :noautocmd qall!<CR>
au BufRead,BufNewFile *urls set filetype=yacc
nnoremap <silent><c-e> : e $MYVIMRC <CR>

" Tabline Name only
set guitablabel=%t
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
hi LineNr guibg=NONE

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<C-b>'

" WhiteSpaces Goneee
cabb <silent> ww %s/\n\+\%$//e

" cabb W w
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
cabb Wq wq

" No Swap files
set noswapfile


" nnoremap sv : source $MYVIMRC <bar> :doautocmd BufRead<CR>
nnoremap sv : source $MYVIMRC <CR>
nnoremap si : PlugInstall <CR>
nnoremap su : PlugUpdate <CR>

" Setting Default Colorscheme Keybind
	nnoremap <silent> cd : set notermguicolors <bar> : colorscheme default <bar> : set bg=light <bar> : hi Normal guibg=NONE <bar> : set nocursorline<cr>

" Underline the current line with dashes in insert mode
	inoremap ,u <Esc>yyp<c-v>$r-A

" Get all Checkbox mapping from Vimwiki
nnoremap <silent><script><buffer><C-space> :call vimwiki#lst#toggle_cb(line('.'), line('.'))<CR>


autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab
setlocal shiftwidth=2 softtabstop=2

"Alacritty Problem
" autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" par text formatter for gq and gqip
set formatprg=par
set formatprg=par\ -w50

" Clear  Junk Files after compilaiton
nnoremap <silent> <leader>d :!mlclear % <CR>

"Nvim Snippy
imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
xmap <Tab> <Plug>(snippy-cut-text)

nmap <silent> <C-t> : hi normal guibg=None gui=None \| hi linenr guibg=None \| hi EndOfBuffer guibg=None <CR>

nmap <silent><c-=> :ZoomIn<CR>
nmap <silent><c--> :ZoomOut<CR>
nmap <silent><A-S-k> :ZoomIn<CR>
nmap <silent><A-S-j> :ZoomOut<CR>

" set guifont=SF\ Mono:h10
set guifont=SauceCodePro\ Nerd\ Font:h12


nmap <silent> <C-o> : call ToggleDefault() \| hi NonText guifg=bg<CR>
colorscheme gruvbox-material


"Markdown preview 
let g:mkdp_browser = 'chromium'
" let g:nvim_markdown_preview_theme = 'solarized-light'
nmap <C-p> <plug>(nvim-markdown-preview)

autocmd filetype cpp map <space><space> : vsplit input.txt <bar>write<CR>
autocmd BufNewFile,BufRead *.bf      set    filetype=brainfsck
autocmd BufNewFile,BufRead *.nasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.asm     set    filetype=nasm
autocmd BufNewFile,BufRead *.yasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.fasm    set    filetype=fasm
autocmd BufNewFile,BufRead *.c3      set    filetype=c3
autocmd filetype c nmap <space><space> :!tcc -run % <CR>

" nmap <C-T> : Telescope telescope-tabs list_tabs<CR>

lua require("nvim-tree").setup()
lua require("twilight").setup()

nmap <space>h : Telescope oldfiles <CR>
nmap <space>b : Telescope buffers <CR>
nmap <space>f : Telescope fd <CR>
nmap <space>t : Telescope colorscheme <CR>
nmap <space>m : Telescope man_pages <CR>
nmap <space>k : Telescope keymaps <CR>
nmap <space>s : Telescope current_buffer_fuzzy_find <CR>
nmap <space>v : Telescope vim_options <CR>

"Statusbar
" source ~/.config/nvim/statusline.vim


