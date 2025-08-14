using DataStructures

function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    grid = Matrix{Char}(undef, H, W)
    for i= 1:H
        grid[i, :] = collect(readline())
    end

    sensors = Vector{Tuple{Int, Int}}()
    for i=1:H, j=1:W
        if grid[i, j] == '#'
            push!(sensors, (i, j))
        end
    end

    ds = DisjointSets{Tuple{Int, Int}}(sensors)
    for i=1:H, j=1:W
        if grid[i, j] == '#'
            for (di, dj) in [(0, 1), (1, -1), (1, 0), (1, 1)]
                if 1 ≤ i+di ≤ H && 1 ≤ j+dj ≤ W
                    if grid[i+di, j+dj] == '#'
                        union!(ds, (i, j), (i+di, j+dj))
                    end
                end
            end
        end
    end
    num_groups(ds)
end

println(solve())
