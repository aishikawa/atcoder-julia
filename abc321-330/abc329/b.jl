function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    sort!(A, rev=true)
    for i=2:N
        if A[i-1] ≠ A[i]
            return A[i]
        end
    end
end

println(solve())
