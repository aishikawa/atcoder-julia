function permutations(a)
    if length(a) == 1
        Set(a)
    else
        res = Set()
        for (i, v) in enumerate(a)
            rest = permutations(a[1:i-1] * a[i+1:end])
            for perm in rest
                push!(res, v * perm)
            end
        end
        res
    end
end

function solve()
    s, k = split(readline())
    k = parse(Int, k)

    perms = permutations(s)
    sort(collect(perms))[k]
end

println(solve())
