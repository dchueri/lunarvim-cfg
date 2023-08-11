-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = { "windwp/nvim-ts-autotag", "nvim-neotest/neotest", "haydenmeade/neotest-jest",
  "marko-cerovac/material.nvim", "sunjon/shade.nvim" }

reload("user.options")
reload("user.theme")
reload("user.lsp")
