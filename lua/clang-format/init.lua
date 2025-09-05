local M = {}

function M.setup(opts)

	opts = opts or {}

	assert(opts.clangFormatPath, "Expected .clang-format path to be specified. Set clangFormatPath in opts.")

	vim.api.nvim_create_autocmd({"BufWritePost"}, {
		pattern = {"*.c", "*.h"},
		callback = function(ev)
			local out = vim.fn.system({"clang-format", "-i", ev.match, "--style=file:" .. opts.clangFormatPath})
			if out ~= '' then
				print(out)
			end
			vim.cmd("checktime")
		end
	})
end

return M
