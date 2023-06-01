local M = {
	vim.keymap.set("n", "<leader>pv", vim.cmd.Ex),

	vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv"),
	vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv"),

	vim.keymap.set("n", "J", "mzJ`z"),
	vim.keymap.set("n", "<C-d>", "<C-d>zz"),
	vim.keymap.set("n", "<C-u>", "<C-u>zz"),
	vim.keymap.set("n", "n", "nzzzv"),
	vim.keymap.set("n", "N", "Nzzzv"),

	--vim.keymap.set("n", "<leader>vwm", function()
	--require("vim-with-me").StartVimWithMe()
	--end)
	--vim.keymap.set("n", "<leader>svwm", function()
	--require("vim-with-me").StopVimWithMe()
	--end)

	-- greatest remap ever
	vim.keymap.set("x", "<leader>P", [["_dP]]),

	-- next greatest remap ever : asbjornHaland
	vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]),
	vim.keymap.set("n", "<leader>Y", [["+Y]]),

	vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]),

	-- This is going to get me cancelled
	vim.keymap.set("i", "<C-c>", "<Esc>"),

	vim.keymap.set("n", "Q", "<nop>"),
	vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>"),
	vim.keymap.set("n", "<leader>f", vim.lsp.buf.format),

	vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz"),
	vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz"),
	vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz"),
	vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz"),
	vim.keymap.set("n", "<leader>sub", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]),
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }),
	vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>"),

	-- From chris@scratcher --
	-- Stay in visual indent mode
	vim.keymap.set("v", "<", "<gv", { silent = true }),
	vim.keymap.set("v", ">", ">gv", { silent = true }),

	-- Resize with arrows
	vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true }),
	vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true }),
	vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true }),
	vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true }),

	-- Plugin Related
	vim.keymap.set("n", "<F4>", ":NvimTreeToggle<CR>", { silent = true }),
	vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { silent = true }),
	vim.keymap.set("n", "<A-i>", ":ToggleTerm<CR>", { silent = true }),

	-- Custom LSP related
	vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)

}

return M
