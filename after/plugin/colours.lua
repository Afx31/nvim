function Theme(colour)
	colour = colour or "onedark_dark"
	vim.cmd.colorscheme(colour)

	-- Transparent background
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Theme()
