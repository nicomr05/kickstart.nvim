-- ============================================================================
-- KEYMAPS
-- ============================================================================

-- Grep search
vim.opt.grepprg = 'grep -HRIn $* .'
--vim.keymap.set('n', '<Leader>gg', '<cmd>copen | <cmd>silent <cmd>grep ', { desc = 'Grep search' })

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- Plugin mappings
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Lazy config buffer' })
vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>', { desc = 'Mason config buffer' })
vim.keymap.set('n', '<leader>n', '<cmd>Neotree toggle left<CR>', { desc = 'Neotree file explorer' })

-- Quick file navigation
--vim.keymap.set('n', '<leader>e', '<cmd>Explore<CR>', { desc = 'Open file explorer' })
--vim.keymap.set('n', '<leader>ff', '<cmd>find ', { desc = 'Find file' })

-- Clear search gighlight
vim.keymap.set('n', '<leader>c', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })

-- Automatic brackets
vim.cmd [[inoremap " ""<left>]]
vim.cmd [[inoremap ' ''<left>]]
vim.cmd [[inoremap ( ()<left>]]
vim.cmd [[inoremap [ []<left>]]
vim.cmd [[inoremap { {}<left>]]
vim.cmd [[inoremap {<CR> {<CR>}<ESC>O]]
vim.cmd [[inoremap {;<CR> {<CR>};<ESC>O]]

-- Y to EOL
vim.keymap.set('n', 'Y', 'y$', { desc = 'Yank to end of line' })

-- Center screen when jumping
--vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
--vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
--vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
--vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without yanking' })

-- Delete without yanking
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = 'Delete without yanking' })

-- Buffer navigation
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<CR>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>', { desc = '[B]uffer [P]revious' })

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Splitting & Resizing
vim.keymap.set('n', '<leader>sv', '<cmd>vsplit<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>sh', '<cmd>split<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })

-- Move lines up/down
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', "<cmd>m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', "<cmd>m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- Better indenting in visual mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })

-- Better J behavior
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines and keep cursor position' })

-- Quick config editing
vim.keymap.set('n', '<leader>rc', '<cmd>e ~/.config/nvim/init.lua<CR>', { desc = 'Edit config' })

-- Transparent Vim
vim.keymap.set('n', '<leader>v', '<cmd>TransparentToggle<CR>', { desc = 'Toggle editor transparency' })

-- Markdown/LaTeX keymaps
vim.keymap.set('n', '<leader>K', '<cmd>VimtexCompile<CR>', { desc = 'Compile TeX file' })
vim.keymap.set('n', '<leader>rm', '<cmd>RenderMarkdown toggle<CR>', { desc = 'Toggle Render Markdown' })

-- Git signs
vim.keymap.set('n', '<leader>gs', '<cmd>Gitsigns<CR>', { desc = 'Gitsigns search' })
vim.keymap.set('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame<CR>', { desc = 'Gitsigns toggle current line blame' })
vim.keymap.set('n', '<leader>gB', '<cmd>Gitsigns blame<CR>', { desc = 'Gitsigns blame' })
vim.keymap.set('n', '<leader>gd', '<cmd>Gitsigns diffthis<CR>', { desc = 'Gitsigns diff' })
