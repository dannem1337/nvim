vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      -- Trim trailing whitespaces
      callback = function()
        -- Save cursor position to restore later
        local curpos = vim.api.nvim_win_get_cursor(0)
        -- Search and replace trailing whitespaces
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.cmd([[keeppatterns %s/\r$//e]])
        vim.api.nvim_win_set_cursor(0, curpos)
      end,
    })
  end,
})
