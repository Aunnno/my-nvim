require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { bg = 'NONE', fg = '#89b4fa', gui = 'bold' },
        b = { bg = 'NONE', fg = '#a6adc8' },
        c = { bg = 'NONE', fg = '#a6adc8' },
      },
      insert = {
        a = { bg = 'NONE', fg = '#a6e3a1', gui = 'bold' },
        b = { bg = 'NONE', fg = '#a6adc8' },
        c = { bg = 'NONE', fg = '#a6adc8' },
      },
      visual = {
        a = { bg = 'NONE', fg = '#cba6f7', gui = 'bold' },
        b = { bg = 'NONE', fg = '#a6adc8' },
        c = { bg = 'NONE', fg = '#a6adc8' },
      },
      replace = {
        a = { bg = 'NONE', fg = '#f38ba8', gui = 'bold' },
        b = { bg = 'NONE', fg = '#a6adc8' },
        c = { bg = 'NONE', fg = '#a6adc8' },
      },
      command = {
        a = { bg = 'NONE', fg = '#fab387', gui = 'bold' },
        b = { bg = 'NONE', fg = '#a6adc8' },
        c = { bg = 'NONE', fg = '#a6adc8' },
      },
      inactive = {
        a = { bg = 'NONE', fg = '#585b70' },
        b = { bg = 'NONE', fg = '#585b70' },
        c = { bg = 'NONE', fg = '#585b70' },
      },
    },
  },
})
