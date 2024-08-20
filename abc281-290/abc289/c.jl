function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    sets = Vector{Set{Int}}()
    for m=1:M
        c = parse(Int, readline())
        push!(sets, Set([parse(Int, x) for x in split(readline())]))
    end
    
    allset = Set(1:N)
    ans = 0
    for i=1:2^M - 1
        u = Set{Int}()
        for j=0:M-1
            if i >> j & 1 ≠ 0
                u = u ∪ sets[j+1]
            end
        end
        if u == allset
            ans += 1
        end
    end
    ans
end

println(solve())
