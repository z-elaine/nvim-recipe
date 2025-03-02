-- Remember cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line
    if line("'\"") > 1 and line("'\"") <= line("$") then
      vim.cmd("normal! g`\"")
    end
  end,
})

-- Make/CMake
vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  command = "setlocal noexpandtab",
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "CMakeLists.txt",
  command = "setlocal filetype=cmake",
})

