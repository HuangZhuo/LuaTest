
-- private key
local index = { }
local mt = {
    __index = function(t, k) return _t[index][k] end,
    __newindex = function(t, k, v) _t[index][k] = v end
}

function tract(t)
    local proxy = { }
    proxy[index] = t
    return setmetatable(proxy, mt)
end

function readOnly(t)
    local proxy = { }
    local mt = {
        __index = t,
        __newindex = function() error("attempt to update a read-only table", 2) end
    }
    return setmetatable(proxy, mt)
end