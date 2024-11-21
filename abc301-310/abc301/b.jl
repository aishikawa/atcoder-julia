function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    ans = Vector{Int}([A[1]])

    for a in A[2:end]
        while ans[end] ≠ a
            if ans[end] > a
                push!(ans, ans[end]-1)
            else
                push!(ans, ans[end]+1)
            end
        end
    end
    join(ans, " ")
end

println(solve())
