-- autocommand variable
local set_autocmd = vim.api.nvim_create_autocmd

-- vim.api.nvim_exec([[ autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif ]], false)
