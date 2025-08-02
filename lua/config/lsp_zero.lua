local lsp_zero = require("lsp-zero")
lsp_zero.preset("recommended")

lsp_zero.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I',
	},
})

lsp_zero.setup()

local cmp = require("cmp")
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" }
	}
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources(
    {
      { name = "path" }
    },
    {
      {
        name = "cmdline",
        option = {
          ignore_cmds = { 'Man', '!' }
        }
      }
    }
  )
})

