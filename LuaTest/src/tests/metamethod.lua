local Set = { }
Set.mt = { }

function Set.new(t)
    local s = { }
    for _, v in ipairs(t or { }) do
        s[v] = true
    end
    return setmetatable(s, Set.mt)
end

function Set.union(a, b)
    if getmetatable(a) ~= Set.mt or
        getmetatable(b) ~= Set.mt then
        error("attempt to 'add' a set with a non-set value", 2)
    end

    local s = Set.new()
    for k in pairs(a) do s[k] = true end
    for k in pairs(b) do s[k] = true end
    return s
end

function Set.intersection(a, b)
    local s = Set.new()
    for k in pairs(a) do
        s[k] = b[k]
    end
    return s
end

function Set.tostring(set)
    local s = "{"
    -- or use table.concat
    local sep = ""
    for e in pairs(set) do
        s = s .. sep .. e
        sep = ", "
    end
    return s .. "}"
end

function Set.print(s)
    print(Set.tostring(s))
end

-- metamethods +,*
Set.mt.__add = Set.union
Set.mt.__mul = Set.intersection
Set.mt.__tostring = Set.tostring

function test()
    local s1 = Set.new( { 1, 2, 3 })
    local s2 = Set.new( { 1, 10, 20, 30 })
    print(s1 + s2)
    print(s1 * s2)
end

test()

