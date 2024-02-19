function solve()
    l1, r1, l2, r2 = [parse(Int, x) for x in split(readline())]
    l = max(l1, l2)
    r = min(r1, r2)
    max(0, r - l)
end

println(solve())
