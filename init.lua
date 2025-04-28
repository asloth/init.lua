--init.lua test snippet

vim.defer_fn(function()
  vim.notify("Hello from deferred init!", vim.log.levels.INFO, { timeout = 2000 })
end, 500)
require("gera")
