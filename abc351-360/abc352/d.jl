using DataStructures

function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    P = [parse(Int, x) for x in split(readline())]

    pos = Vector{Int}(undef, N)
    for i in 1:N
        pos[P[i]] = i
    end

    s = SortedSet{Int}()
    for i in 1:K
        push!(s, pos[i])
    end
    ans = last(s) - first(s)

    for i in K+1:N
        delete!(s, pos[i-K])
        push!(s, pos[i])
        ans = min(ans, last(s) - first(s))
    end

    return ans
end

println(solve())
