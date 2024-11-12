-- Config for tab completion with coc.nvim
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.api.nvim_set_keymap("i", "<Tab>", 'coc#pum#visible() ? coc#pum#confirm() : v:lua.check_back_space() ? "<Tab>" : coc#refresh()', opts)
vim.api.nvim_set_keymap("i", "<S-Tab>", "coc#pum#visible() ? coc#pum#prev() : '<C-h>'", opts)





