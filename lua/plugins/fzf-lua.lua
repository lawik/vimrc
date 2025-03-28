return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>p", "<cmd>FzfLua files<cr>", desc = "Go to file" },
        { "<leader>f", "<cmd>FzfLua blines<cr>", desc = "Search file" },
        { "<leader>r", "<cmd>FzfLua grep_project<cr>", desc = "Search all files" },
    },
    opts = {},
}
