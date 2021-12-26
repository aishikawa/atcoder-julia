using DataStructures

function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]
    cs = [parse(Int, x) for x in split(readline())]

    amap = DefaultDict{Int, Int}(0)
    for a in as
        amap[a] += 1
    end

    bmap = DefaultDict{Int, Int}(0)
    for c in cs
        bmap[bs[c]] += 1
    end

    ret = 0
    for i=1:n
        ret += amap[i] * bmap[i] 
    end
    ret
end

println(solve())
