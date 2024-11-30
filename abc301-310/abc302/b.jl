function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    grid = fill('.', (H, W))
    for i=1:H
        grid[i, :] = collect(readline())
    end

    s = ['s', 'n', 'u', 'k', 'e']
    ans = Vector{Tuple{Int, Int}}()
    for i=1:H, j=1:W
        if grid[i, j] == s[1]
            for (di, dj) in [(-1, 0), (1, 0), (0, -1), (0, 1), (-1, -1), (-1, 1), (1, -1), (1, 1)]
                ans = [(i, j)]
                for k=1:4
                    ii = i+k*di
                    jj = j+k*dj
                    if 1 ≤ ii ≤ H && 1 ≤ jj ≤ W && grid[ii, jj] == s[k+1]
                        push!(ans, (ii, jj))
                    else
                        break
                    end
                end
                if length(ans) == 5
                    break
                end
            end
            if length(ans) == 5
                break
            end
        end
        if length(ans) == 5
            break
        end
    end
    for a in ans
        println("$(a[1]) $(a[2])")
    end
end

solve()
