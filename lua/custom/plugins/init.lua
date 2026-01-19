-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      'jmbuhr/otter.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      debug = false,
      closePreviewOnExit = true,
      lspFeatures = {
        enabled = true,
        chunks = 'curly',
        languages = { 'python', 'bash' },
        diagnostics = {
          enabled = true,
          triggers = { 'BufWritePost' },
        },
        completion = {
          enabled = true,
        },
      },
      codeRunner = {
        enabled = true,
        default_method = 'slime',
        ft_runners = {},
        never_run = { 'yaml' },
      },
      keys = {
        {
          '<leader>r',
          function()
            require('quarto').quarto.Preview()
          end,
          desc = 'Quarto Preview',
        },
      },
    },
  },
}
