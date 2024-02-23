vim.opt.termguicolors = true
local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
  return
end

-- bufferline 配置
bufferline.setup({
  options = {
    numbers = "bufer_id",
    -- 关闭 Tab 的命令，这里使用 moll/vim-bbye 的 :Bdelete 命令
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    -- 侧边栏配置
    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    }
  }
})


vim.api.nvim_set_keymap("n", "<A-1>", ":BufferLineGoToBuffer 1\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-2>", ":BufferLineGoToBuffer 2\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-3>", ":BufferLineGoToBuffer 3\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-4>", ":BufferLineGoToBuffer 4\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-5>", ":BufferLineGoToBuffer 5\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-6>", ":BufferLineGoToBuffer 6\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-7>", ":BufferLineGoToBuffer 7\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-8>", ":BufferLineGoToBuffer 8\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-9>", ":BufferLineGoToBuffer 9\r", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-q>", ":bdelete %\r", {noremap = true, silent = true})


