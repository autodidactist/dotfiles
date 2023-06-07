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
" Plug 'tpope/vim-vinegar'
" Plug 'tpope/vim-unimpaired'
" Plug 'harrisoncramer/jump-tag'
" Plug 'windwp/nvim-autopairs'
" Plug 'windwp/nvim-ts-autotag'
" Plug 'feline-nvim/feline.nvim'
Plug 'michaelb/sniprun', {'do': 'bash ./install.sh'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'fedorenchik/fasm.vim'
Plug 'lommix/godot.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'windwp/nvim-ts-autotag'
Plug 'alexghergh/nvim-tmux-navigation'
Plug 'alvan/vim-closetag'
Plug 'radgeRayden/vim-scopes'
Plug 'junegunn/vim-substrata'
Plug 'tjdevries/lua.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'dylanaraps/wal.vim'
Plug 'mrcjkb/haskell-tools.nvim'
Plug 'c2lang/c2.vim'
Plug 'naegelejd/vim-swig'
Plug 'derekwyatt/vim-fswitch'
Plug 'davisdude/vim-love-docs'
Plug 'krady21/compiler-explorer.nvim'
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicon'
Plug 'janet-lang/janet.vim'
Plug 'easymotion/vim-easymotion'
Plug 'phaazon/hop.nvim'
Plug 'tpope/vim-fugitive'
Plug 'jesseduffield/lazygit'
Plug 'extrawurst/gitui'
Plug 'iberianpig/tig-explorer.vim'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'       " Plug
Plug 'luochen1990/rainbow'
Plug 'norcalli/snippets.nvim'
Plug 'honza/vim-snippets'
Plug 'dcampos/nvim-snippy'
Plug 'gorbit99/codewindow.nvim'
Plug 'Yggdroot/indentLine'
Plug 'TimUntersberger/neogit'
Plug 'lewis6991/spellsitter.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'LukasPietzschmann/telescope-tabs'
" Plug 'wbthomason/packer.nvim'
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
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'drzel/vim-gui-zoom'
Plug 'Mofiqul/vscode.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
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

" colorscheme Tomorrow-Night
colorscheme gruvbox-material

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
	vmap > >gv
	vmap < <gv

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

	map <silent><space>e : NvimTreeToggle<CR>
	" map <silent><leader>f :CocCommand explorer --preset floating<cr>

	nnoremap <C-w>h <C-w>s
	" map <C-w>s <C-w>r
	nnoremap <C-q> <C-w>q
	nnoremap <c-w>s <C-w>r

" Enable folding for Python
	set foldenable
	set foldmethod=manual
	set foldlevel=0

	nnoremap S :%s//g<Left><Left>
	vnoremap S :s//g<Left><Left>
	vnoremap L :call Lines() 

" compile document, be it groff/latex/markdown/etc.
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
	" nnoremap <silent><S-k> gt
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
nnoremap <silent> <A-l> :vertical resize -1<CR>
nnoremap <silent> <A-h> :vertical resize +1<CR>

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
		set laststatus=0
		set noshowmode
		let s:bar = 1
	else
		set laststatus=2
		" set noshowmode
		let s:bar = 0
	endif
endfunction

function Alpha()
	hi normal guibg=None gui=None
  hi linenr guibg=None 
	hi EndOfBuffer guibg=None 
endfunction

function Lines()
   let i=1 | '<,'>g/^/ s//\=i . " "/ | let i+=1
endfunction

" Current Path
  nnoremap <c-f> :FZF <CR>

	set bg=dark
	set termguicolors
	highlight CursorLineNr gui=bold guibg=NONE
	" hi Normal guibg=NONE ctermbg=None

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
	" inoremap ,u <Esc>yyp<c-v>$r-A
	inoremap ,u <Esc>yyp<c-v>$r-A

" Get all Checkbox mapping from Vimwiki
nnoremap <silent><script><buffer><C-space> :call vimwiki#lst#toggle_cb(line('.'), line('.'))<CR>


autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab

setlocal shiftwidth=2 softtabstop=4

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

nmap <silent> <C-t> : hi normal guibg=None gui=None \| hi linenr guibg=None \| hi EndOfBuffer guibg=None \| set fillchars=eob:\  ""<CR>

nmap <silent><c-=> :ZoomIn<CR>
nmap <silent><c--> :ZoomOut<CR>
nmap <silent><A-S-k> :ZoomIn<CR>
nmap <silent><A-S-j> :ZoomOut<CR>

" set guifont=SF\ Mono:h10
set guifont=Fira\ Code:h16
" set guifont=Source\ Code\ Pro:h12
" set guifont=Iosevka:h12
" set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12


nmap <silent> <C-o> : call ToggleDefault() \| hi NonText guifg=bg<CR>
nmap <silent> <leader>n : set fillchars=eob:\ <CR>


"Markdown preview 
let g:mkdp_browser = 'chromium'
" let g:nvim_markdown_preview_theme = 'solarized-light'
" nmap <C-p> <plug>(nvim-markdown-preview)

autocmd filetype cpp map <space><space> : vsplit input.txt <bar>write<CR>
autocmd filetype python map <space><space> : vsplit Output <bar>write <bar> wincmd h<CR>
autocmd BufNewFile,BufRead *.bf      set    filetype=brainfsck
autocmd BufNewFile,BufRead *.nasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.asm     set    filetype=nasm
autocmd BufNewFile,BufRead *.yasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.fasm    set    filetype=fasm
autocmd BufNewFile,BufRead *.love    set    filetype=lua
autocmd BufNewFile,BufRead *.c3      set    filetype=c3
autocmd BufNewFile,BufRead *.c2      set    filetype=c2
autocmd filetype c nmap <space><space> :!tcc -run % <CR>
" autocmd filetype c colorscheme sourcerer

" nmap <C-T> : Telescope telescope-tabs list_tabs<CR>

lua require("nvim-tree").setup()
lua require("twilight").setup()
lua require('spellsitter').setup()

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



" call Alpha()
" set spell

" lua require('nvim-ts-autotag').setup()


" lua << EOF
" require("nvim-autopairs").setup {}
" EOF


nmap <silent><c-p> : e#<CR>
" nmap gs <C-w>f
" nmap gv <C-w>vgf
" nmap gt <C-w>gf
" nnoremap gf <C-W>vgf
nnoremap gf <C-W>gf



" require'hop'.setup()
 let g:rainbow_active = 1 



" lua require('feline').setup()


" lua << END
" require('lualine').setup()
" END

lua << END
require('nvim-highlight-colors').setup {}
END

nnoremap <space><S-M> : MonokaiProSelect<CR>

" lua require("monokai-pro").setup()
" lua << END
" require('editorconfig').properties.foo = function(bufnr, val)
"   vim.b[bufnr].foo = val
" end
" END
  

set path+=/usr/include/c++/12.2

" if executable('gcc')
"   let s:expr = 'gcc -Wp,-v -x c++ - -fsyntax-only 2>&1 | grep "^ " | sed "s/^ //"'
"   let s:lines = systemlist(s:expr)
"   for s:line in s:lines
"     execute 'set path+=' . fnameescape(s:line)
"   endfor
" endif

let g:catppuccin_flavour = "macchiato" " , latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

" colorscheme catppuccin
colorscheme vscode

lua << EOF
require'nvim-tmux-navigation'.setup {
    disable_when_zoomed = true -- defaults to false
}
EOF
nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>




lua << EOF
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
EOF

lua << EOF
require('nvim-ts-autotag').setup({
  filetypes = { "html" , "xml" },
})
EOF

" lua << EOF
" require().setup({
"   { 'codota/tabnine-nvim', build = "./dl_binaries.sh" },
" })
" EOF


		set laststatus=0
		set noshowmode

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


nmap <leader>ff <Plug>SnipRun
nmap <leader>f <Plug>SnipRunOperator
vmap f <Plug>SnipRun
