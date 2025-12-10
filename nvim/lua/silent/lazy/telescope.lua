return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = { 'nvim-lua/plenary.nvim' },
	
	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')

		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>gf", builtin.git_files)
		vim.keymap.set("n", "<leader>uf", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)		
	end
}

