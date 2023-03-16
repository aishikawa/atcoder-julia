function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    ns = zeros(Int, n)
    for a in as 
        ns[a] += 1
    end
    argmin(ns)
end

println(solve())
