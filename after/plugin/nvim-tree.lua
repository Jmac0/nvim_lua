local setup, nvimtree = pcall(require,"nvim-tree")
if not setup then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({

      view = {
        adaptive_size = false,
        centralize_selection = false,
        width = 40,
        hide_root_folder = true,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
          custom_only = false,
          list = {
            -- user mappings go here
          },
        },
      },
})
