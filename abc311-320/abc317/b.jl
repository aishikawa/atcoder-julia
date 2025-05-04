function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    sort!(A)
    for i=1:N-1
        if A[i+1] - A[i] ≠ 1
            return A[i] + 1
        end
    end

end

println(solve())
