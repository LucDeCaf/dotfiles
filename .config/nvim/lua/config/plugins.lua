local plugins = {
	-- Dependencies
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-mini/mini.icons" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },

	-- Plugins
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
	{ src = "https://github.com/saghen/blink.cmp", version = "v1" },
	{ src = "https://github.com/folke/snacks.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/romus204/tree-sitter-manager.nvim" },
}

local postinstalls = {
	["blink.cmp"] = { "cargo", "build", "--release" },
}

-- Run postinstall scripts after downloading packages
vim.api.nvim_create_autocmd("User", {
	pattern = "PackChanged",
	callback = function(e)
		local postinstall_step = postinstalls[e.data.name]
		if postinstall_step ~= nil then
			-- Build package asynchronously, then notify once done
			vim.system(postinstall_step, { cwd = e.data.path }, function(obj)
				if obj.code ~= 0 then
					vim.schedule(function()
						vim.notify("Postinstall failed [" .. e.data.name .. "]: " .. obj.stderr, vim.log.levels.ERROR)
					end)
				else
					vim.schedule(function()
						vim.notify("Postinstall succeeded [" .. e.data.name .. "].", vim.log.levels.INFO)
					end)
				end
			end)
		end
	end,
})

vim.pack.add(plugins)

-- Plugin management commands
vim.api.nvim_create_user_command("PackUpdate", function()
	vim.pack.update()
end, {})

vim.api.nvim_create_user_command("PackInstall", function()
	vim.pack.add(plugins)
end, {})

vim.api.nvim_create_user_command("PackClean", function()
	-- stylua: ignore
	local inactive = vim.iter(vim.pack.get())
		:filter(function(x) return not x.active end)
        :map(function(x) return x.spec.name end)
		:totable()

	if #inactive == 0 then
		vim.print("No inactive plugins")
		return
	end

	vim.print("Deleting inactive plugins...")
	vim.pack.del(inactive)
	if #inactive == 1 then
		vim.print("Deleted 1 plugin.")
	else
		vim.print("Deleted " .. #inactive .. " plugins.")
	end
end, {})
