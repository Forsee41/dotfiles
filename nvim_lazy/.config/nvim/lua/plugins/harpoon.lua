return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        harpoon = require("harpoon")
	harpoon.setup()

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
        keymap.set("n", "<leader>s", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
        keymap.set("n", "<leader>d", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
        keymap.set("n", "<leader>f", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
        keymap.set("n", "<leader>w", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
        keymap.set("n", "<leader>q", "<cmd>lua require('harpoon.mark').add_file()<cr>")
    end,
}
