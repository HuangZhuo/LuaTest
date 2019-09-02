-- 1.use resume-yield to exchange data

local co = coroutine.create( function(a, b)
    coroutine.yield(a + b, a - b)
    return a, b
end )

print(coroutine.status(co))
print(coroutine.resume(co, 10, 20))

print(coroutine.status(co))
print(coroutine.resume(co, 10, 20))

print(coroutine.status(co))
print(coroutine.resume(co, 10, 20))

-- 2.producer-consumer problem

function receive(prod)
    local st, v = coroutine.resume(prod)
    return v
end

function send(x)
    coroutine.yield(x)
end

function producer()
    return coroutine.create( function()
        while true do
            local x = io.read()
            send(x)
        end
    end )
end

function consumer(prod)
    while true do
        local x = receive(prod)
        io.write(x, "\n")
    end
end

function test()
    consumer(producer())
end

-- 3.iterator, 

local utils = require("tests.utils")

function permutationGen(a, n)
    if 0 == n then
        utils.printArray(a)
        return
    end
    for i = 1, n do
        -- put i-th element as the last one
        a[n], a[i] = a[i], a[n]
        -- generate all permutations of the other elements
        permutationGen(a, n - 1)
        -- restore i-th element
        a[n], a[i] = a[i], a[n]
    end
end

permutationGen( { 1, 2, 3, 4 }, 4)