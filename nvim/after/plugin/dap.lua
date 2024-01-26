local dap = require("dap")


vim.keymap.set("n", "<leader>dc", function()
    dap.continue()
end)
  
vim.keymap.set("n", "<leader>dr", function()
    dap.repl.toggle()
end)
  
vim.keymap.set("n", "<leader>dK", function()
    require("dap.ui.widgets").hover()
end)
  
vim.keymap.set("n", "<leader>dtb", function()
    dap.toggle_breakpoint()
end)
  
vim.keymap.set("n", "<leader>dso", function()
    dap.step_over()
end)
  
vim.keymap.set("n", "<leader>dsi", function()
    dap.step_into()
end)
  
vim.keymap.set("n", "<leader>drl", function()
    dap.run_last()
end)




dap.configurations.scala = {
    {
        type = "scala",
        request = "launch",
        name = "Run or test",
        metals = {
            runType = "runOrTestFile",
            --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
        },
    },
    {
        type = "scala",
        request = "launch",
        name = "Run with arguments",
        metals = {
            runType = "run",
            args = function()
                local args_string = vim.fn.input('Arguments: ')
                return vim.split(args_string, " +")
            end
        },
    },
    {
        type = "scala",
        request = "launch",
        name = "Test target",
        metals = {
            runType = "testTarget",
        },
    },
}

require('dap-python').setup('C:/Users/werbu/.pyenv/pyenv-win/versions/3.11.2/python')