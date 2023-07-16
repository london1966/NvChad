---@type MappingsTable
local M = {}

M.general = {
  n = {
    [",wc"] = { "<C-w>c", "Close window" },
    [",wv"] = { "<C-w>v", "Split window vertically" },
    [",ws"] = { "<C-w>s", "Split window horizontally" },
    [",wh"] = { "<C-w>h", "Window left" },
    [",wl"] = { "<C-w>l", "Window right" },
    [",wj"] = { "<C-w>j", "Window down" },
    [",wk"] = { "<C-w>k", "Window up" },
    [",a"] = { "^", "Go to line start" },
    [",e"] = { "$", "Go to line end" },
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


return M
