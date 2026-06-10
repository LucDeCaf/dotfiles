vim.api.nvim_create_user_command("PackUpdate", function()
	vim.pack.update()
end, {})

vim.api.nvim_create_user_command("PackInstall", function()
	-- Rerun the `vim.pack.add(...)` command
	dofile("./plugins.lua")
end, {})
