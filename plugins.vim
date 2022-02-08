call plug#begin('~/.local/share/nvim/plugged')
	Plug 'haishanh/night-owl.vim'
	Plug 'hashivim/vim-hashicorp-tools'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'junegunn/fzf.vim'
	Plug 'luochen1990/rainbow'
	Plug 'neovim/nvim-lspconfig'
	Plug 'psf/black', { 'branch': 'stable' }
	Plug 'tell-k/vim-autopep8'
call plug#end()

for path in split(globpath("$HOME/.config/nvim/plugins", '*.vim'), "\n")
    execute 'source' fnameescape(path)
endfor

let g:black_virtualenv="/home/user/.local/share/nvim/black"
