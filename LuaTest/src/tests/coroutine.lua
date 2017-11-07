-- use resume-yield to exchange data

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

-- producer-consumer problem

local producer = coroutine.create( function()
    while true do
        -- produce new value
        local x = io.read()
        send(x)
    end
end )

function receive()
    local st, v = coroutine.resume(producer)
    return v
end

function send(x)
    coroutine.yield(x)
end