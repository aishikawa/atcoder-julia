using DataStructures

function solve()
    m = 2*10^5
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ds = IntDisjointSets(m)
    for i=1:n÷2
        union!(ds, as[i], as[end-i+1])
    end
    
    s = zeros(Int, m)
    for i=1:m
        r = find_root!(ds, i)
        s[r] += 1
    end
    sum([x > 0 ? x-1 : 0 for x in s])
end

println(solve())
