using OffsetArrays

function solve()
    H, W, N = [parse(Int, x) for x in split(readline())]
    grid = OffsetArray(fill('.', H, W), 0:H-1, 0:W-1)

    di = 0
    direction = OffsetArray([[-1, 0], [0, 1], [1, 0], [0, -1]], 0:3)
    pos = [0, 0]

    for _=1:N
        if grid[pos...] == '.'
            grid[pos...] = '#'
            di = mod(di+1, 4)
            pos = pos .+ direction[di]
            pos[1] = mod(pos[1], H)
            pos[2] = mod(pos[2], W)
        else
            grid[pos...] = '.'
            di = mod(di-1, 4)
            pos = pos .+ direction[di]
            pos[1] = mod(pos[1], H)
            pos[2] = mod(pos[2], W)
        end
    end

    for i=0:H-1
        println(join(grid[i, :]))
    end
end

solve()
