function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    v0 = 0
    searched = Set{Int}([1])
    s = [1]
    while !isempty(s)
        v = pop!(s)
        n = A[v]
        if n ∈ searched
            v0 = n
            break
        end
        push!(searched, n)
        push!(s, n)
    end


    s = v0
    ans = [v0]
    while A[s] ≠ v0
        push!(ans, A[s])
        s = A[s]
    end

    println(length(ans))
    println(join(ans, " "))
end

solve()
