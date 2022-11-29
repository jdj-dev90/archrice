
local dap = require('dap')
require('telescope').load_extension('dap')
--[[ require('user.dbg.node').setup() ]]
--[[ require('user.dbg.typescript').setup() ]]
require("dapui").setup()



-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true

--[[ require("mason-nvim-dap").setup() ]]
--[[]]
--[[]]
--[[ require 'mason-nvim-dap'.setup_handlers { ]]
--[[     function(source_name) ]]
--[[       -- all sources with no handler get passed here ]]
--[[]]
--[[]]
--[[       -- Keep original functionality of `automatic_setup = true` ]]
--[[       require('mason-nvim-dap.automatic_setup')(source_name) ]]
--[[     end, ]]
--[[     node2 = function(source_name) ]]
--[[     dap.adapters.node2 = { ]]
--[[       type = 'executable', ]]
--[[       command = 'node', ]]
--[[       args = {os.getenv('HOME') .. '.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'}, ]]
--[[     } ]]
--[[     dap.configurations.javascript = { ]]
--[[       { ]]
--[[         name = 'Launch', ]]
--[[         type = 'node2', ]]
--[[         request = 'launch', ]]
--[[         program = '${file}', ]]
--[[         cwd = vim.fn.getcwd(), ]]
--[[         sourceMaps = true, ]]
--[[         protocol = 'inspector', ]]
--[[         console = 'integratedTerminal', ]]
--[[       }, ]]
--[[       { ]]
--[[         -- For this to work you need to make sure the node process is started with the `--inspect` flag. ]]
--[[         name = 'Attach to process', ]]
--[[         type = 'node2', ]]
--[[         request = 'attach', ]]
--[[         processId = require'dap.utils'.pick_process, ]]
--[[       }, ]]
--[[     }  ]]
--[[       end, ]]
--[[ } ]]
