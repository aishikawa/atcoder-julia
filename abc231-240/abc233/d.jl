using DataStructures

function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    cs = cumsum(as)

    ret = 0
    dd = DefaultDict{Int, Int}(0)
    for r=1:n
        if cs[r] == k
            ret += 1
        end
        if r ≥ 2
            dd[cs[r-1]] += 1
            ret += dd[cs[r]-k]
        end
    end
    ret
end

println(solve())
