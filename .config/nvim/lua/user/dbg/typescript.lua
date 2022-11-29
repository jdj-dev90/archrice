
local M = {}
local function configureDebuggerAngular(dap)
    dap.adapters.chrome = {
      -- executable: launch the remote debug adapter - server: connect to an already running debug adapter    
      type = "executable",
      -- command to launch the debug adapter - used only on executable type    
      command = "node",
      args = { os.getenv("HOME") .. "/.local/share/nvim/lsp_debuggers/vscode-chrome-debug/out/src/chromeDebug.js" }
    }
    -- The configuration must be named: typescript    
    dap.configurations.typescript = {
      {
        name = "Debug (Attach) - Remote",
        type = "chrome",
        request = "attach",
        -- program = "${file}",    
        -- cwd = vim.fn.getcwd(),    
        sourceMaps = true,
        --      reAttach = true,    
        trace = true,
        -- protocol = "inspector",    
        -- hostName = "127.0.0.1",    
        port = 9229,
        webRoot = "${workspaceFolder}"
      }
    }
  end

  local function configureDap()
    local status_ok, dap = pcall(require, "dap")
    if not status_ok then
      print("The dap extension could not be loaded")
      return
    end

      print("The dap extension was loaded")
  
    dap.set_log_level("DEBUG")
  
  --[[   vim.highlight.create('DapBreakpoint', { ctermbg = 0, guifg = '#993939', guibg = '#31353f' }, false) ]]
  --[[   vim.highlight.create('DapLogPoint', { ctermbg = 0, guifg = '#61afef', guibg = '#31353f' }, false) ]]
  --[[   vim.highlight.create('DapStopped', { ctermbg = 0, guifg = '#98c379', guibg = '#31353f' }, false) ]]
  --[[  ]]
  --[[   vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', ]]
  --[[     numhl = 'DapBreakpoint' }) ]]
  --[[   vim.fn.sign_define('DapBreakpointCondition', ]]
  --[[     { text = 'ﳁ', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }) ]]
  --[[   vim.fn.sign_define('DapBreakpointRejected', ]]
  --[[     { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' }) ]]
  --[[   vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'DapLogPoint', linehl = 'DapLogPoint', numhl = 'DapLogPoint' }) ]]
  --[[   vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' }) ]]
  
    return dap
  end

function M.setup()
    local dap = configureDap()
  
    if nil == dap then
      print("The DAP core debugger could not be set")
    end
  
    configureDebuggerAngular(dap)
  end

return M
