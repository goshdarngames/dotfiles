" General Vim settings
	syntax on
	let mapleader=","
	set relativenumber number
	set autoindent

	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	:set foldmethod=indent
	hi Folded ctermbg=023

	set hlsearch
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<cr>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

	map <tab> %

	nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap <leader>V V`]
	nnoremap vv 0v$

	:set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>

" Clipboard related things
	vnoremap <leader>c "+y:echo "Coppied to clipboard"
	nnoremap <leader>v :set paste<cr>"+p:set nopaste<cr>:echo "Contents Pasted"<cr>
	inoremap <leader>v <esc>:set paste<cr>"+p:set nopaste<cr>:echo "Contents Pasted"<cr>a

" Language Specific
	" Java
		inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
		vnoremap <leader>sys yoSystem.out.println(<esc>pA);
		nnoremap <silent> <leader>im <esc>G?import<CR>oimport <esc>"+pA;<esc>:nohl<cr>:echo "Import added"<cr>

	" C++
		inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;

	" C
		inoremap <leader>pf <esc>Iprintf(<esc>A);<esc>hi


" File and Window Management 
	inoremap <leader>s <Esc>:w<CR>
	nnoremap <leader>s :w<CR>

	inoremap <leader>q <ESC>:x<CR>
	nnoremap <leader>q :x<CR>
	nnoremap <leader>t :tabnew 

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Future stuff
	"Swap line
	"Insert blank below and above
