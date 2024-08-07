local M = {}

local DEFAULT_SCROLLOFF_PERCENTAGE = 0.2
local OPTS_ERROR = "Error initializing smart-scrolloff.nvim: scrolloff_percentage must be a greater than or equal to 0."

local get_scrolloff_percentage = function(opts)
	if opts.scrolloff_percentage == nil then
		return DEFAULT_SCROLLOFF_PERCENTAGE
	end

	if type(opts.scrolloff_percentage) ~= "number" or opts.scrolloff_percentage < 0 then
		error(OPTS_ERROR)
	end

	return opts.scrolloff_percentage
end

M.setup = function(opts)
	local scrolloff_percentage = get_scrolloff_percentage(opts)

	vim.api.nvim_create_autocmd({ "WinResized" }, {
		group = vim.api.nvim_create_augroup("smart-scrolloff", { clear = true }),
		callback = function()
			local new_scrolloff = math.floor(vim.o.lines * scrolloff_percentage)
			print("Updating scrolloff to " .. new_scrolloff)
			vim.opt.scrolloff = new_scrolloff
		end,
	})
end

return M
