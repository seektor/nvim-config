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

require("lazy").setup({
  -- Theme
  "Mofiqul/vscode.nvim",

  -- Dashboard
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },

  -- File Tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Telescope
  { 'nvim-telescope/telescope-fzf-native.nvim',
   build = 'make' },

  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Windows navigation
    'christoomey/vim-tmux-navigator',

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  }
})