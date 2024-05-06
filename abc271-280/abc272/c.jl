function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    even = sort(filter(iseven, as), rev=true)
    odd = sort(filter(isodd, as), rev=true)

    ret = -1
    if length(even) ≥ 2
        ret = max(ret, even[1]+even[2])
    end
    if length(odd) ≥ 2
        ret = max(ret, odd[1]+odd[2])
    end
    ret
end

println(solve())
