function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    oa = ob = true
    for i=2:n
        na = (oa && abs(as[i-1] - as[i]) ≤ k) || (ob && abs(bs[i-1] - as[i]) ≤ k)
        nb = (oa && abs(as[i-1] - bs[i]) ≤ k) || (ob && abs(bs[i-1] - bs[i]) ≤ k)
        oa, ob = na, nb
    end
    oa || ob ? "Yes" : "No"
end

println(solve())
