function solve()
    N, D = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    for i=1:N-1
        if A[i+1] - A[i] ≤ D
            return A[i+1]
        end
    end
    -1
end

println(solve())
