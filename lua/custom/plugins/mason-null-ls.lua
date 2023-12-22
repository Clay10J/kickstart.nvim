-- MAKE SURE NODE IS INSTALLED
-- MAKE SURE GO PACKAGES ARE INSTALLED. Ex: go install <package link> or brew install <package_name>
return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.gofumpt,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.formatting.golines,
          null_ls.builtins.formatting.black,
          null_ls.builtins.diagnostics.ruff,
          null_ls.builtins.diagnostics.mypy.with({
            extra_args = function()
              local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
              return { "--python-executable", virtual .. "/bin/python3" }
            end,
	  }),
        },
      })
    end,
}
