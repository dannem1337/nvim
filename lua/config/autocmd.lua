local function trim_whitespace(buf)
  if vim.bo[buf].buftype ~= '' or not vim.bo[buf].modifiable then
    return
  end

  local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  local first, last
  for i, line in ipairs(lines) do
    local trimmed = line:gsub('[ \t\r]+$', '')
    if trimmed ~= line then
      lines[i] = trimmed
      first = first or i
      last = i
    end
  end
  if first then
    vim.api.nvim_buf_set_lines(buf, first - 1, last, false, vim.list_slice(lines, first, last))
  end

  -- Drop blank lines at the end of the buffer.
  local n = #lines
  while n > 1 and lines[n] == '' do
    n = n - 1
  end
  if n < #lines then
    vim.api.nvim_buf_set_lines(buf, n, -1, false, {})
  end
end

vim.api.nvim_create_autocmd('BufWritePre', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  callback = function(args)
    trim_whitespace(args.buf)
  end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = "json",
    callback = function()
        vim.opt_local.formatprg = "jq"
    end,
})
