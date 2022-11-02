let mapleader =","
" set term=xterm-256color

" Neovide Specific
if !has('gui_running')
 set t_Co=256
endif

set guifont=SF\ Mono:h10

" Fix indenting visual block
  vmap < <gv
  vmap > >gv

" center the search on the line it's found in.
	nnoremap n nzzzv
	nnoremap N Nzzzv


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
  filetype plugin indent on
	syntax on
	set expandtab
	set encoding=utf-8
        set laststatus=0
	set number relativenumber

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	red


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright


"Compiler Run
  map <space>c :!compiler <c-r>%<CR>

  "Clean some trash
	autocmd VimLeave *.tex,*.d,*.cpp,*.ml,*.hs,*.fsx !mlclear %
	autocmd VimLeave *.tex !texclear %
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Some sensible keybinds for me unlike vim defaults
	map Y y$
	nnoremap <silent><S-k> gt
	nnoremap <silent><S-j> gT
	nnoremap <silent><C-s> <C-w>r

" Select all
   map <c-a> ggvG$
   imap <c-a> <ecs>ggvG$


" Insert in a () anywhere on the line 
	" map <leader>; /(<CR>ci)


" Replace ex mode with gq
	map Q gq
  set shortmess+=c

" use alt + hjkl to resize windows
  nnoremap <silent> <A-j> :resize -1<CR>
  nnoremap <silent> <A-k> :resize +1<CR>
  nnoremap <silent> <A-h> :vertical resize -1<CR>
  nnoremap <silent> <A-l> :vertical resize +1<CR>

" Colorscheme

	set bg=dark
	set termguicolors
        colorscheme gruvbox-material
	highlight CursorLineNr gui=bold guibg=NONE
	hi Normal guibg=NONE ctermbg=None

"Force Quit
  noremap Q :noautocmd qall!<CR>

" Newsboat URL file
au BufRead,BufNewFile *urls set filetype=yacc

nnoremap <silent><c-e> : e $MYVIMRC <CR>

" Tabline Name only
set guitablabel=%t

" WhiteSpaces Goneee
cabb <silent> ww %s/\n\+\%$//e

" Treat W/Q as w/q casual typo
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>

" I need this
cabb Wq wq

" No Swap files ( I hate swap files )
set noswapfile

nnoremap sv : source $MYVIMRC <CR>
nnoremap si : PlugInstall <CR>
nnoremap su : PlugUpdate <CR>

" Setting Default Colorscheme Keybind
	nnoremap <silent> cd : set notermguicolors <bar> : colorscheme default <bar> : set bg=light <bar> : hi Normal guibg=NONE <bar> : set nocursorline<cr>

" Underline the current line with dashes in insert mode
	inoremap ,u <Esc>yyp<c-v>$r-A

"Haskell Specific
autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab

"Alacritty Problem
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" par text formatter for gq and gqip
set formatprg=par
set formatprg=par\ -w50

"Proper Zooming for Neovide(GUI)
nmap <silent><c-=> :ZoomIn<CR>
nmap <silent><c--> :ZoomOut<CR>
nmap <silent><A-S-k> :ZoomIn<CR>
nmap <silent><A-S-j> :ZoomOut<CR>


autocmd BufNewFile,BufRead *.bf      set    filetype=brainfsck
autocmd BufNewFile,BufRead *.nasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.asm     set    filetype=nasm
autocmd BufNewFile,BufRead *.yasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.fasm    set    filetype=fasm
autocmd BufNewFile,BufRead *.c3      set    filetype=c3
