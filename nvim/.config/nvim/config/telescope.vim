nnoremap <Leader>o <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.find_files{}<CR>
nnoremap <Leader>gr <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <Leader>en <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/.config/nvim/" }<CR>