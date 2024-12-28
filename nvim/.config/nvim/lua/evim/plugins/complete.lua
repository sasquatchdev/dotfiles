---@diagnostic disable: missing-fields
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "neovim/nvim-lspconfig",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    "onsails/lspkind.nvim"
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    require("cmp").setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)

        end,
      },
      window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      },
      mapping = require("cmp").mapping.preset.insert({
        ['<C-b>'] = require("cmp").mapping.scroll_docs(-4),
        ['<C-f>'] = require("cmp").mapping.scroll_docs(4),
        ['<C-Space>'] = require("cmp").mapping.complete(),
        ['<C-e>'] = require("cmp").mapping.abort(),
        ['<CR>'] = require("cmp").mapping.confirm({ select = false }),
      }),
      sources = require("cmp").config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = {
            menu = 50,
            abbr = 50
          },
          before = function(_, item)
            return item
          end,
          ellipsis_char = "...",
          show_labelDetails = true
        })
      }
    })

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
    })
  end
}
