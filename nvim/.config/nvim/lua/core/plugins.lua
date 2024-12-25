local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'kenn7/vim-arsync',
  'prabirshrestha/async.vim',
  'EdenEast/nightfox.nvim',
  'morhetz/gruvbox',
  'rebelot/kanagawa.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
--  'nanozuki/tabby.nvim', 
--  'romgrk/barbar.nvim',
  'akinsho/bufferline.nvim', branch="main",
  'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  'junegunn/vim-xmark',
--  'williambowman/mason.nvim',
--  'prichrd/netrw',
  "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
}

local opts = {}

require("lazy").setup(plugins, opts)
