require "nvchad.mappings"

local map = vim.keymap.set

------------- QOL -------------
-- map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
map("i", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })
map("n", ";", "<cmd>", { desc = "Terminal enter command mode" })
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })
map("n", "<leader>cs", "<cmd>Telescope session-lens<cr>", { desc = "Change session telescope" })
map("n", "<leader>ss", "<cmd>SessionSave<cr>", { desc = "Session save" })
-- TODO: Add mapping for toggling comment in insert mode.
-- TODO: Make completion menu open whenever you enter insert mode.
-- TODO: Map _ to go to start of line or the first part of comment (after the colon if a TODO comment).

-- map("n", "<tab>", function() require("nvchad.tabufline").next() end, { desc = "Buffer Goto next" })
-- map("n", "<S-tab>", function() require("nvchad.tabufline").prev() end, { desc = "Buffer Goto prev" })
map("n", "<C-tab>", "<cmd>bprev<cr>", { desc = "Buffer Goto prev active" })
map("n", "<C-S-tab>", "<cmd>bnext<cr>", { desc = "Buffer Goto next active" })

------------- CompetiTest -------------
map("n", "<leader>cpu", "<CMD>CompetiTest show_ui<CR>", { desc = "CompetiTest show ui" })
map("n", "<leader>cpr", "<CMD>CompetiTest run<CR>", { desc = "CompetiTest run" })
map("n", "<leader>cpR", "<CMD>CompetiTest run_no_compile<CR>", { desc = "CompetiTest run without compiling" })
map("n", "<leader>cpa", "<CMD>CompetiTest add_testcase<CR>", { desc = "CompetiTest add testcase" })
map("n", "<leader>cpe", "<CMD>CompetiTest edit_testcase<CR>", { desc = "CompetiTest edit testcase" })

------------- todo-comments -------------
map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Annotated Comment: Next" })
map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Annotated Comment: Previous" })
map(
  "n",
  "<leader>td",
  "<CMD>TodoTelescope keywords=FIX,FIXME,BUG,FIXIT,ISSUE,TODO,PERF,OPTIM,PERFORMANCE,OPTIMIZE<CR>",
  { desc = "Annotated Comment: Show all" }
)

------------- crates.io -------------
map("n", "<leader>ct", function() require("crates").toggle() end, { desc = "Crates: Toggle" })
map("n", "<leader>cr", function() require("crates").reload() end, { desc = "Crates: Reload" })

map("n", "<leader>cv", function() require("crates").show_versions_popup() end, { desc = "Crates: Show crate versions" })
map("n", "<leader>cf", function() require("crates").show_features_popup() end, { desc = "Crates: Show crate features" })
map("n", "<leader>cd", function() require("crates").show_dependencies_popup() end,
  { desc = "Crates: Show crate dependencies" })

map("n", "<leader>ce", function() require("crates").expand_plain_crate_to_inline_table() end,
  { desc = "Convert inline crate to inline table" })

map("n", "<leader>cE", function() require("crates").extract_crate_into_table() end,
  { desc = "Crates: Refactor crate to table" })

map("n", "<leader>cu", function() require("crates").update_crate() end, { desc = "Crates: Update crate" })
map("v", "<leader>cu", function() require("crates").update_crates() end, { desc = "Crates: Update" })
map("n", "<leader>ca", function() require("crates").update_all_crates() end, { desc = "Crates: Update all" })
map("n", "<leader>cU", function() require("crates").upgrade_crate() end, { desc = "Crates: Upgrade crate" })
map("v", "<leader>cU", function() require("crates").upgrade_crates() end, { desc = "Crates: Upgrade" })
map("n", "<leader>cA", function() require("crates").upgrade_all_crates() end, { desc = "Crates: Upgrade all" })

map("n", "<leader>cH", function() require("crates").open_homepage() end, { desc = "Crates: Open crate open homepage" })
map("n", "<leader>cR", function() require("crates").open_repository() end, { desc = "Crates: Open crate repository" })
map("n", "<leader>cD", function() require("crates").open_documentation() end,
  { desc = "Crates: Open crate documentation" })
map("n", "<leader>cC", function() require("crates").open_crates_io() end, { desc = "Crates: Open crates.io" })

------------- dial -------------
map("n", "<C-a>", function()
  require("dial.map").manipulate("increment", "normal")
end, { desc = "Dial: Increment" })
map("n", "<C-x>", function()
  require("dial.map").manipulate("decrement", "normal")
end, { desc = "Dial: Decrement" })
map("n", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gnormal")
end, { desc = "Dial: Increment" })
map("n", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gnormal")
end, { desc = "Dial: Decrement" })
map("v", "<C-a>", function()
  require("dial.map").manipulate("increment", "visual")
end, { desc = "Dial: Increment" })
map("v", "<C-x>", function()
  require("dial.map").manipulate("decrement", "visual")
end, { desc = "Dial: Decrement" })
map("v", "g<C-a>", function()
  require("dial.map").manipulate("increment", "gvisual")
end, { desc = "Dial: Increment" })
map("v", "g<C-x>", function()
  require("dial.map").manipulate("decrement", "gvisual")
end, { desc = "Dial: Decrement" })
