local map = vim.keymap.set

local function open_terminal(position)
  if position == "bottom" then
    vim.cmd("botright 12split | terminal")
  else
    vim.cmd("botright vsplit | terminal")
  end
  vim.cmd.startinsert()
end

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<C-h>", "<C-w><C-h>", { desc = "Focus left window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Focus lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Focus upper window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Focus right window" })
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit window" })
map("n", "<leader>t", function()
  open_terminal("bottom")
end, { desc = "Terminal below" })
map("n", "<leader>?", function()
  open_terminal("right")
end, { desc = "Terminal right" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Leave terminal mode" })
map("n", "<leader>f", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer" })
