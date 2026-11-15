return {
  {
    --"tanvirtin/monokai.nvim",
    "njorquera98/monokai_remastered.nvim",
    opts = {
      colorscheme = "monokai",
    },
  },

  {
    "andweeb/presence.nvim",
    lazy = false,
  },

  {
    "rest-nvim/rest.nvim",
    lazy = false,
    keys = {
      { "<localleader>rr", "<cmd>Rest run<cr>", desc = "Run request under the cursor" },
    },
    config = function()
      vim.g.rest_nvim = {
        response = {
          hooks = {
            format = false, -- mantiene el formateo con gq (que usará jq)
          },
        },
      }

      -- Autocmd para que los buffers de resultados usen filetype json
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "httpResult",
        callback = function()
          vim.bo.filetype = "json"
        end,
      })
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "sphamba/smear-cursor.nvim",
    opts = {},
  },
}
