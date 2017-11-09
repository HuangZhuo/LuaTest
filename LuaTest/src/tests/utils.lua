local utils = { }

function utils.printArray(t)
    print(string.format("[%s]", table.concat(t, ",")))
end

return utils