function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = Vector{String}(undef, N)
    for i=1:N
        S[i] = readline()
    end
    T = Set{String}()
    for _=1:M
        push!(T, readline())
    end

    ans = 0
    for s in S
        if s[end-2:end] ∈ T
            ans += 1
        end
    end
    ans
end

println(solve())
