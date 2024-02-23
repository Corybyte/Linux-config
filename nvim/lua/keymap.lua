local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
map("n", "<C-n>",":NvimTreeToggle\n",opt)
map("n", "<C-f>", ":Telescope find_files<CR>", opt)
map("n", "<A-Enter>",":FloatermToggle<CR>",opt)
