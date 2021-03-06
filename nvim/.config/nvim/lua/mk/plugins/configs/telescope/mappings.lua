TelescopeMapArgs = TelescopeMapArgs or {}

local map_telescope = function(key, f, options, buffer)
  local map_key = vim.api.nvim_replace_termcodes(key .. f, true, true, true)

  TelescopeMapArgs[map_key] = options or {}

  local mode = "n"
  local rhs = string.format(
    "<cmd>lua require('mk.plugins.configs.telescope')['%s'](TelescopeMapArgs['%s'])<CR>",
    f,
    map_key
  )

  local map_options = {
    noremap = true,
    silent = true,
  }

  if not buffer then
    vim.api.nvim_set_keymap(mode, key, rhs, map_options)
  else
    vim.api.nvim_buf_set_keymap(0, mode, key, rhs, map_options)
  end
end

-- dotfiles
map_telescope('<leader>en', 'edit_nvim')

-- search
map_telescope('<leader>sf', 'git_files')
map_telescope('<leader>z', 'live_grep')

-- files
map_telescope('<leader>fo', 'git_files')
map_telescope('<leader>ff', 'all_files')
map_telescope('<leader>fd', 'fd')

-- nvim
map_telescope('<leader>fr', 'lsp_references')
map_telescope('<leader>fb', 'buffers')

return map_telescope
