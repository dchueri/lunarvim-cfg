require('neotest').setup({
    adapters = {require('neotest-jest')({
        jestCommand = "jest",
        console = "integratedTerminal"
    })}
})
