return {
  {
    "williamboman/mason.nvim", 
    config = function()
    require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim" , 
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { "lus_ls","texlab", "grammarly", "pyright"}
      })
    end
  },   
  {
    "neovim/nvim-lspconfig", 
    config = function() 
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.texlab.setup({})
      lspconfig.grammarly.setup({})
      lspconfig.pyright.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}
