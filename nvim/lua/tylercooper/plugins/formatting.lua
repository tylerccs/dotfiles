return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
	rust = { "rustfmt" },
	xml = { "prettier" },
	vim = { "vimlint" },
	sh = { "shfmt" },
	zsh = { "shfmt" },
	fish = { "fish_indent" },
	go = { "gofmt", "goimports" },
	c = { "clang-format" },
	cpp = { "clang-format" },
	objc = { "clang-format" },
	java = { "google-java-format" },
	kotlin = { "ktlint" },
	scala = { "scalafmt" },
	sql = { "sqlformat" },
	php = { "phpcbf" },
	ruby = { "rufo" },
	swift = { "swiftformat" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
