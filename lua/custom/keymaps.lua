-- Helpers
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function mapfn(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Keymaps
mapfn('n', '<leader>rn', function()
    vim.o.relativenumber = not vim.o.relativenumber
end)
map('', '<C-s>', ':w<CR>')
mapfn('', "ga", function()
    vim.lsp.buf.code_action();
end)

-- Dismiss Noice Message
map("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Neotree keymaps
-- map('', '<C-n>', ':Neotree toggle<CR>')
map('', "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
do
    local telescopeBuiltin = require('telescope.builtin')
    mapfn('n', "<leader>ff", telescopeBuiltin.find_files)
    mapfn('n', '<leader>fg', telescopeBuiltin.live_grep)
    mapfn('n', '<leader>fb', telescopeBuiltin.buffers)
    mapfn('n', '<leader>fh', telescopeBuiltin.help_tags)
end

-- BufferLine
map("n", "<leader>tn", ":BufferLineMoveNext<CR>")
map("n", "<leader>tb", ":BufferLineMovePrev<CR>")

map("n", "<TAB>", ":BufferLineCycleNext<CR>")
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")

map("n", "<leader>tpc", ":BufferLinePickClose<CR>")
map("n", "<leader>tpp", ":BufferLinePick<CR>")
map("n", "<leader>tc", ":bdelete<CR>")

-- lsp keymaps
mapfn("n", "gd", vim.lsp.buf.definition)
mapfn("n", "K", vim.lsp.buf.hover)
mapfn("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
mapfn("n", "<leader>vd", vim.diagnostic.open_float)
mapfn("n", "[d", vim.diagnostic.goto_next)
mapfn("n", "]d", vim.diagnostic.goto_prev)
mapfn("n", "<leader>vca", vim.lsp.buf.code_action)
mapfn("n", "<leader>vrr", vim.lsp.buf.references)
mapfn("n", "<leader>vrn", vim.lsp.buf.rename)
