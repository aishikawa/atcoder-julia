function solve()
    N = parse(Int, readline())
    S = Vector{String}(undef, N)
    t = 0
    for i=1:N
        S[i], c = split(readline())
        t += parse(Int, c)
    end
    sort!(S)
    S[t % N + 1]
end

println(solve())
