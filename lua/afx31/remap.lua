vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- nvim-tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>op", ":NvimTreeOpen<CR>", { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>h", ":NvimTreeClose<CR>", { noremap = true, silent = true })

-- Moves the highlighted row up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in J place, J takes below line appends to current line with space
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in middle of page when Ctrl d/u move up/down half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps cursor in middle of page when going through search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When copy and paste something over another highlighted piece of text
-- It'll keep the current copied value copied (and not take the one we're copying over
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy paragraph into memory to paste outside of vim?
-- <leader>y then ap , yank this paragraph
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Apparently same as above but "delete to void register" ?
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Vertically edit, Ctrl + C won't save things vertially below?
vim.keymap.set("i", "<C-c>", "<Esc>")

-- "Don't ever click capital Q, it's the worst place in the universe"
vim.keymap.set("n", "Q", "<nop>")

-- Change project directories with tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- "Quick fix" navigation ?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- <leader>s , lil command pops up at bottom based on current word selected, and whatever we then type in replaces it
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- When writing like a bash, run this inside the file and it makes it executable (instead of going out and doing the chmod)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
