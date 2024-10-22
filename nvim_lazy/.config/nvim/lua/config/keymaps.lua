vim.g.mapleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end


-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
map("n", "<leader>,", ":nohl<CR>")

-- LSP related --
map("n", "<leader>g", ":lua vim.lsp.buf.format()<CR>")
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "gs", ":vsp<CR><cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>")
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>")
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>")
map("n", "<leader>li", "<cmd>LspInfo<cr>")
map("n", "<leader>lI", "<cmd>LspInstallInfo<cr>")
map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>")
map("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>")
map("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>")
map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>")
map("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
map("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>")

-- Buf navigation
map("n", "<leader>n", ":BufSurfForward<CR>")
map("n", "<leader>p", "::BufSurfBack<CR>")
