local M = {}

M.general = {
  n = {
    [",,"] = { ",", "Comma" },
    [",a"] = { "^", "Go to line start" },
    [",e"] = { "$", "Go to line end" },
    [",dl"] = { "cc<ESC>", "Remove whole line" },

    [",wc"] = { "<C-w>c", "Close window" },
    [",wv"] = { "<C-w>v", "Split window vertically" },
    [",ws"] = { "<C-w>s", "Split window horizontally" },
    [",wh"] = { "<C-w>h", "Window left" },
    [",wl"] = { "<C-w>l", "Window right" },
    [",wj"] = { "<C-w>j", "Window down" },
    [",wk"] = { "<C-w>k", "Window up" },
  },
}

M.nvterm = {
  plugin = true,
  n = {
    [",ti"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    [",th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    [",tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  }
}

M.tabufline = {
  plugin = true,
  n = {
    [",tt"] = {
      "<cmd>tabnew<CR>",
      "New tab",
    },

    [",tn"] = {
      "<cmd>tabNext<CR>",
      "Goto next tab",
    },

    [",tp"] = {
      "<cmd>tabprevious<CR>",
      "Goto previous tab",
    },

    [",tc"] = {
      "<cmd>tabclose<CR>",
      "Close current tab",
    },

    [",tl"] = {
      "<cmd>tablast<CR>",
      "Goto last tab",
    },

    [",tf"] = {
      "<cmd>tabfirst<CR>",
      "Goto first tab",
    },
  }
}

M.lspconfig = {
  plugin = true,

  n = {
    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references()
      end,
      "LSP references",
    }
  }
}

M.telescope = {
  plugin = true,

  n = {
    [",ds"] = { "<cmd> Telescope lsp_document_symbols symbols=function,method,class <CR>", "Find symbols in document" },
    [",df"] = { "<cmd> Telescope lsp_document_symbols symbols=function,method <CR>", "Find functions in document" },
    [",sd"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "Search Diagnostics",
    },
  }
}

M.dap = {
  plugin = true,
  n = {
    [",db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    [",dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    [",dpr"] = {
      function ()
        require("dap-python").test_method()
      end
    }
  }
}

return M
