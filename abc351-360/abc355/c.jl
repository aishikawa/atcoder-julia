function solve()
    N, T = parse.(Int, split(readline()))
    A = parse.(Int, split(readline()))

    grid = zeros(Bool, (N, N))
    for (t, a) in enumerate(A)
        i = (a-1) ÷ N + 1
        j = (a-1) % N + 1 
        grid[i, j] = true
        if all(grid[i, :]) || all(grid[:, j])
            return t
        end
        d1 = d2 = true
        for k=1:N
            if !grid[k, k]
                d1 = false
            end
            if !grid[k, N-k+1]
                d2 = false
            end
        end
        if d1 || d2
            return t
        end
    end
    -1
end

println(solve())
