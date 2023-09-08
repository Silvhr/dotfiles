return {
	'glacambre/firenvim',
	 cond = not not vim.g.started_by_firenvim,
          build = function()
            require("lazy").load({ plugins = "firenvim", wait = true })
            vim.fn["firenvim#install"](0)
          end,

          -- configure FireNvim here:
          config = function()
            vim.g.firenvim_config = {
              -- config values, like in my case:
              localSettings = {
                [".*"] = {
                  takeover = "never",
                },
              },
            }
          end

    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
}
-- let l:bufname=expand('%:t')
-- if l:bufname =~? 'github.com'
--     set ft=markdown
-- elseif l:bufname =~? 'cocalc.com' || l:bufname =~? 'kaggleusercontent.com'
--     set ft=python
-- elseif l:bufname =~? 'localhost'
--     " Jupyter notebooks don't have any more specific buffer information.
--     " If you use some other locally hosted app you want editing function in, set it here.
--     set ft=python
-- elseif l:bufname =~? 'reddit.com'
--     set ft=markdown
-- elseif l:bufname =~? 'stackexchange.com' || l:bufname =~? 'stackoverflow.com'
--     set ft=markdown
-- elseif l:bufname =~? 'slack.com' || l:bufname =~? 'gitter.com'
--     set ft=markdown
-- elseif l:bufname =~? 'leetcode.com'
--     set ft=markdown
-- endif
-- map("n", "<c-3>", ":wq<CR>")
-- map("n", "<C-Z>", fn["firenvim#hide_frame"])
