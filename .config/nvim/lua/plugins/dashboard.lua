return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvimdev/dashboard-nvim" },
  -- take exiting options and override the logo only
  opts = function(_, opts)
    local logo = [[

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⠀⠀⠀⢠⣾⣧⣤⡖⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠋⠀⠉⠀⢄⣸⣿⣿⣿⣿⣿⣥⡤⢶⣿⣦⣀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡆⠀⠀⠀⣙⣛⣿⣿⣿⣿⡏⠀⠀⣀⣿⣿⣿⡟
⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠷⣦⣤⣤⣬⣽⣿⣿⣿⣿⣿⣿⣿⣟⠛⠿⠋⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡆⠀⠀
⠀⠀⠀⠀⣠⣶⣶⣶⣿⣦⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠈⢹⡏⠁⠀⠀
⠀⠀⠀⢀⣿⡏⠉⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡆⠀⢀⣿⡇⠀⠀⠀
⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡘⣿⣿⣃⠀⠀⠀
⣴⣷⣀⣸⣿⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⠹⣿⣯⣤⣾⠏⠉⠉⠉⠙⠢⠀
⠈⠙⢿⣿⡟⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣄⠛⠉⢩⣷⣴⡆⠀⠀⠀⠀⠀
⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣀⡠⠋⠈⢿⣇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀

THE ONE PIECE IS REAL
⠀⠀⠀⠀⠀

    ]]
    --     local logo = [[
    -- ⠀⠀⠀⢀⣤⣤⣤⣄⠀⠀⣀⣤⠶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⣰⠟⠀⠀⠀⠉⠻⣾⠋⠀⡎⢱⠹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠈⣿⠀⠀⠀⠀⠀⠀⠁⠀⠀⠑⠊⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠙⠳⢦⣄⣀⠀⠀⠀⢀⣴⠟⠁⠀⠀⡤⠋⠉⠉⡶⠉⣈⣣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠀⠀⠈⠙⠳⣦⣴⠟⡡⠤⠤⣄⡤⣧⢤⡀⠀⠀⠀⠉⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡅⠀⠀⠀⠾⡇⡞⠛⠳⠔⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠦⣄⡤⠏⠉⣇⣀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⣀⡀⢀⣀⣤⡞⠉⠉⠻⣦⠶⢶⣤⠴⠶⠚⠛⠒⠛⠶⠦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⢠⡞⣩⡿⠋⠁⠀⠀⠀⠀⠀⣿⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠨⠟⠉⠉⠙⢦⡀⠀⠀⠀⠀
    -- ⠀⣯⡾⠋⠀⠀⠀⠀⠀⠀⠀⣴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⡆⠀⢘⡇⠀⠀⠀⠀
    -- ⠀⡽⠁⠀⠀⠀⠀⠀⠀⠀⢹⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⢀⡼⠃⠀⠀⠀⠀
    -- ⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠚⢻⠀⠀⠀⠀⠀⠀
    -- ⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣼⣆⣀⠀⣶⡆⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⠀
    -- ⠀⢷⠀⠀⠀⠀⠀⠀⠀⠀⡿⢏⢿⠧⢶⠉⡇⠲⠂⢱⠀⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀
    -- ⠀⠈⢳⣄⠀⠀⠀⠀⠀⠀⠛⢦⣬⣷⡞⠀⠑⠤⢤⣊⡀⠀⠀⠀⣀⣠⠾⠋⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠉⣓⠶⣤⣤⣤⠀⠀⠀⠈⠉⠙⠋⠉⠉⠉⠉⠉⠷⡶⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⡆⠀⡟⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠓⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⢸⡏⠀⡇⠀⣼⠋⠀⠀⠀⠀⠀⠀⠀⢰⠒⠒⠒⢻⠉⠁⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠘⠃⠀⢁⡾⠛⠂⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠈⠳⣤⣤⣦⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠈⠷⣤⠀⠀⠀⠀⠀⠀⠀⠀⣸⠛⠀⠀⠀⠀⢱⡾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠀⠀⢸⡇⠀⡖⡇⠀⠀⠀⠈⣿⠓⢲⡄⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    -- ⠀⠀⠀⠀⠲⠶⠾⣿⣾⣷⣧⣤⣤⣶⣾⣿⣶⣾⣷⣾⣶⣶⡿⠶⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    --   ]]

    -- margin top/bottom
    logo = string.rep("\n", 1) .. logo

    opts.config.header = vim.split(logo, "\n")
  end,
}
