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
  {"nvim-tree/nvim-tree.lua"},                   
  {"nvim-tree/nvim-web-devicons"},
  {"neoclide/coc.nvim"},
  {"folke/tokyonight.nvim"},
  {"akinsho/bufferline.nvim"},
  {"nvim-lua/plenary.nvim"},
  {"nvim-treesitter/nvim-treesitter"},
  {"gelguy/wilder.nvim"},
  {"nvim-telescope/telescope.nvim"},
  {"nvim-lualine/lualine.nvim"},
  {"voldikss/vim-floaterm"},
  {"folke/flash.nvim"},
  {"lukas-reineke/indent-blankline.nvim"}
}
)


