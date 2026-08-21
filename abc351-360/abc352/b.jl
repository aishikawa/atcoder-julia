function solve()
    S = collect(readline())
    T = collect(readline())

    ans = Vector{Int}()

    si = 1
    for ti=eachindex(T)
        if S[si] == T[ti]
            push!(ans, ti)
            si += 1
        end
    end

    join(ans, " ")
end

println(solve())
