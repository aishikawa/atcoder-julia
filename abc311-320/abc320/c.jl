using Combinatorics

function solve()
    M = parse(Int, readline())
    S = Vector{String}(undef, 3)
    S[1] = readline()
    S[2] = readline()
    S[3] = readline()

    ans = 10M
    for p in permutations(1:3)
        for i='0':'9'
            i1 = something(findfirst(i, S[p[1]]), 10M)
            i2 = something(findfirst(i, S[p[2]][i1%M+1:end] * S[p[2]]), 10M) + i1
            i3 = something(findfirst(i, S[p[3]][i2%M+1:end] * S[p[3]]), 10M) + i2
            ans = min(ans, i3)
        end
    end
    ans < 10M ? ans-1 : -1
end

println(solve())
