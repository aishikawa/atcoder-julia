function solve()
    N = parse(Int, readline())
    grid = zeros(Int, (100, 100, 100))
    for i=1:N
        x1, y1, z1, x2, y2, z2 = [parse(Int, x) for x in split(readline())]
        grid[x1+1:x2, y1+1:y2, z1+1:z2] .= i
    end

    adjacent = [Set{Int}() for _=1:N]

    for x=1:100, y=1:100, z=1:100
        if grid[x, y, z] ≠ 0
            cuboid = grid[x, y, z]
            if x > 1 && grid[x-1, y, z] ≠ 0 && cuboid ≠ grid[x-1, y, z]
                push!(adjacent[cuboid], grid[x-1, y, z])
            end
            if x < 100 && grid[x+1, y, z] ≠ 0 && cuboid ≠ grid[x+1, y, z]
                push!(adjacent[cuboid], grid[x+1, y, z])
            end
            if y > 1 && grid[x, y-1, z] ≠ 0 && cuboid ≠ grid[x, y-1, z]
                push!(adjacent[cuboid], grid[x, y-1, z])
            end
            if y < 100 && grid[x, y+1, z] ≠ 0 && cuboid ≠ grid[x, y+1, z]
                push!(adjacent[cuboid], grid[x, y+1, z])
            end
            if z > 1 && grid[x, y, z-1] ≠ 0 && cuboid ≠ grid[x, y, z-1]
                push!(adjacent[cuboid], grid[x, y, z-1])
            end
            if z < 100 && grid[x, y, z+1] ≠ 0 && cuboid ≠ grid[x, y, z+1]
                push!(adjacent[cuboid], grid[x, y, z+1])
            end
        end
    end

    join([length(a) for a in adjacent], "\n")
end

println(solve())
