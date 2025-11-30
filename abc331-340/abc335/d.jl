function new_direction(d::Vector{Int})::Vector{Int}
    return if d == [0, 1]
        [1, 0]
    elseif d == [1, 0]
        [0, -1]
    elseif d == [0, -1]
        [-1, 0]
    elseif d == [-1, 0]
        [0, 1]
    end
end


function solve()
    N = parse(Int, readline())

    ans = zeros(Int, N+2, N+2)
    ans[1,:] = ans[end,:] = ans[:,1] = ans[:,end] .= -1
    direction = [0, 1]
    pos = [2, 2]
    parts = 1
    for parts = 1:N^2-1
        ans[pos...] = parts
        parts += 1
        t = pos .+ direction
        if ans[t...] ≠ 0
            direction = new_direction(direction)
            pos = pos .+ direction
        else
            pos = t
        end
    end
    
    ans = ans[2:end-1,2:end-1]
    for i=1:N
        l = [x == 0 ? "T" : x for x in ans[i, :]]
        println(join(l, " "))
    end
end

solve()
