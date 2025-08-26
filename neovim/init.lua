-- Bootstrap lazy.nvim
vim.cmd([[packadd lazy.nvim]])

-- Set up lazy.nvim
require('lazy').setup({
    -- Plugins for LSP, Autocompletion, and Themes
    {'folke/tokyonight.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'L3MON4D3/LuaSnip'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'nvim-telescope/telescope.nvim'},
    {'kyazdani42/nvim-tree.lua'},
    {'nvim-lualine/lualine.nvim'},
    {'nvim-treesitter/nvim-treesitter'},
    {'windwp/nvim-ts-autotag'},
    {'NvChad/nvim-colorizer.lua'},
})

-- Set the theme to Tokyonight (anime style)
vim.cmd([[colorscheme tokyonight]])

-- Enable LSP configurations for C, Java, Python
local lspconfig = require('lspconfig')

lspconfig.clangd.setup{}  -- C
lspconfig.jdtls.setup{}   -- Java
lspconfig.pyright.setup{} -- Python
lspconfig.html.setup{} --Html
lspconfig.cssls.setup{} --CSS
lspconfig.ts_ls.setup{} --Javascript/Typescript



-- Set up Lualine status line
require('lualine').setup()
require("mason").setup()
require("mason-lspconfig").setup()

-- Enable treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "java", "python", "lua", "bash", "html", "css", "javascript"},
  highlight = { enable = true },
}

-- Autotag and color preview (web dev)

require('nvim-ts-autotag').setup()
require'colorizer'.setup()

