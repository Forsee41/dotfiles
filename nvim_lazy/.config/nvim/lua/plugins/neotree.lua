return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<C-n>", "<CMD>Neotree toggle<CR>")
		keymap.set("n", "<leader>r", "<CMD>Neotree focus<CR>")

	end,
}
