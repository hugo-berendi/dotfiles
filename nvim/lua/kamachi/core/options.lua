local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = true
opt.backup = false
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 0
opt.signcolumn = 'yes'
opt.isfname:append('@-@')

opt.updatetime = 50

opt.colorcolumn = '80'

opt.number = true
opt.relativenumber = true

opt.mouse = 'a'
