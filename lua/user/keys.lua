-- keymappings


-- Whichkey



lvim.builtin.which_key.mappings["s"] = {
        name = "Search",
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope oldfiles cwd_only=true<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        p = { "<cmd>Telescope live_grep<cr>", "Text" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
}



lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["a"] = {
        name = "AnyJumper",
        j = { "<cmd>AnyJump<cr>", "any jumps" },
        l = { "<cmd>AnyJumpLastResults<cr>", "any jumps back" },
}
