call plug#begin('~/.local/share/nvim/plugged')
	Plug 'ambv/black'
	Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': './install.sh' }
	Plug 'eagletmt/neco-ghc'
	Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
	Plug 'haishanh/night-owl.vim'
	Plug 'hashivim/vim-hashicorp-tools'
	Plug 'junegunn/fzf.vim'
	Plug 'luochen1990/rainbow'
	Plug 'ncm2/float-preview'
	Plug 'ncm2/ncm2'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	Plug 'roxma/nvim-yarp'
	Plug 'rust-lang/rust.vim'
	Plug 'tell-k/vim-autopep8'
	Plug 'vhda/verilog_systemverilog.vim'
call plug#end()

for path in split(globpath("$HOME/.config/nvim/plugins", '*.vim'), "\n")
    execute 'source' fnameescape(path)
endfor
