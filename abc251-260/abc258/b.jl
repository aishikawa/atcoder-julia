function solve()
    n = parse(Int, readline())
    grid = Array{Char}(undef, n, n)
    for i=1:n
        grid[i, :] = [c for c in readline()]
    end

    ret = ['0'] 

    for i=1:n, j=1:n
        for d = [[-1, -1], [0, -1], [1, -1], [-1, 0], [1, 0], [-1, 1], [0, 1], [1, 1]]
            ii = i
            jj = j
            v = Vector{Char}(undef, n)
            for k=1:n
                v[k] = grid[ii, jj]
                ii = mod((ii + d[1] - 1), n) + 1
                jj = mod((jj + d[2] - 1), n) + 1
            end
            ret = max(v, ret)
        end
    end
    foldl(*, ret)
end

println(solve())
