local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {}

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'Lua 5.4',
        path = {
          '?.lua',
          '?/init.lua',
          vim.fn.expand '~/.luarocks/share/lua/5.1/?.lua',
          vim.fn.expand '~/.luarocks/share/lua/5.1/?/init.lua',
          '/usr/share/5.4/?.lua',
          '/usr/share/lua/5.4/?/init.lua',
        },
      },
      workspace = {
        library = {
          vim.fn.expand '~/.luarocks/share/lua/5.1',
          '/usr/share/lua/5.4',
        },
      },
    },
  }
}

lspconfig.clangd.setup {}

-- lspconfig.ccls.setup {
--     cmd = { "ccls" },
--     filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
--     offset_encoding = "utf-16"
-- }

-- lspconfig.

lspconfig.ocamllsp.setup {
  filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
  root_dir = lspconfig.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace"),
}
