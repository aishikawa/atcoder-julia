function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    pos = 0
    cut = [0, 360]
    for a in as
        pos = (pos + a) % 360
        push!(cut, pos)
    end
    sort!(cut)
    ret = 0
    for i=1:length(cut)-1
        ret = max(ret, cut[i+1]-cut[i])
    end
    ret
end

println(solve())
