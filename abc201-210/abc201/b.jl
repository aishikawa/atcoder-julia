function solve()
    n = parse(Int, readline())
    mountains = []
    for _=1:n
        s, t = split(readline())
        t = parse(Int, t)
        push!(mountains, (t, s))
    end
    sort!(mountains)
    mountains[end-1][2]
end

println(solve())
