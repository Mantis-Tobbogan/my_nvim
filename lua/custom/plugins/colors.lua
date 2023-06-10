--local M = {
--"folke/tokyonight.nvim",
--lazy = false,
--priority = 1000,
--opts = {}
--}

--function M.config()
----color = color or "rose-pine"
--color = color or "tokyonight-night"
--vim.cmd.colorscheme(color)
--vim.api.nvim_set_hl(0, "normal", { bg = "none" })
----vim.api.nvim_set_hl(0, "normalfloat", { bg = "none" })
--end

local M = {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    Color = Color or "rose-pine"
    vim.cmd.colorscheme(Color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end

}


return M
