function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    S = Vector{Int}()
    for i=1:N
        push!(S, A[i])
        while length(S) ≥ 2 && S[end-1] == S[end]
            v = pop!(S)
            v = pop!(S)
            S = push!(S, v+1)
        end
    end
    length(S)
end

println(solve())
