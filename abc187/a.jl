function s(n)
    sum([parse(Int, x) for x in n])
end

function solve()
    l = split(readline())
    maximum([s(x) for x in l])
end

println(solve())
