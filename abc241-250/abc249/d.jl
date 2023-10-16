using DataStructures

function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    c = counter(as)
    u = unique(as)
    sort!(u)
    m = u[end]

    ret = 0
    for q=1:m
        for r=1:m÷q
            ret += c[q*r]*c[q]*c[r]
        end
    end
    ret
end

println(solve())
