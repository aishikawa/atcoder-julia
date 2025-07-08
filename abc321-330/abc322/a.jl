function solve()
    n = parse(Int, readline())
    s = readline()
    idx = findfirst("ABC", s)
    idx === nothing ? -1 : first(idx)
end

println(solve())
