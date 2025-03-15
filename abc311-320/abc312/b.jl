function isTaKCode(grid::Matrix{Char})
    for i=1:3
        if grid[i, 1:4] ≠ ['#', '#', '#', '.']
            return false
        end
    end
    if grid[4, 1:4] ≠ ['.', '.', '.', '.']
        return false
    end
    if grid[6, 6:9] ≠ ['.', '.', '.', '.']
        return false
    end
    for i=7:9
        if grid[i, 6:9] ≠ ['.', '#', '#', '#']
            return false
        end
    end
    true
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = Matrix{Char}(undef, N, M)
    for i=1:N
        S[i, :] = collect(readline())
    end
    for i=1:N-8, j=1:M-8
        if isTaKCode(S[i:i+8, j:j+8])
            println("$i $j")
        end
    end
end

solve()
