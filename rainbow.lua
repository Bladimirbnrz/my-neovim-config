-- Configuración de rainbow-delimiters
vim.api.nvim_set_hl(0, 'RainbowDelimiterRed',    { fg = '#6F0031' }) -- Amarillo
vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#7B1FB4' }) -- Morado brillante
vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue',   { fg = '#61AFEF' }) -- Azul
vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#D19A66' }) -- Naranja
vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen',  { fg = '#98C379' }) -- Verde
vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#C678DD' }) -- Violeta
vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan',   { fg = '#56B6C2' }) -- Cian

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = require('rainbow-delimiters').strategy['global'],
        --latex = require('rainbow-delimiters').strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        --latex = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
    blacklist = {'latex'},
}
