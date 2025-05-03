function solve()
    N, H, X = [parse(Int, x) for x in split(readline())]
    P = [parse(Int, x) for x in split(readline())]
    searchsortedfirst(P, X-H)
end

println(solve())
