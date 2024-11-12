function solve()
    N = parse(Int, readline())
    S = readline()

    dangos = split(S, "-")
    if length(dangos) == 1
        -1
    else
        m = maximum([length(d) for d in dangos])
        m == 0 ? -1 : m
    end
end

println(solve())
