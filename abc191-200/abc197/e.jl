function solve()
    n = parse(Int, readline())
    points = Dict{Int, Array{Int, 1}}()
    for _ in 1:n
        x, c = [parse(Int, x) for x in split(readline())]
        if c in keys(points)
            points[c][1] = min(points[c][1], x)
            points[c][2] = max(points[c][2], x)
        else
            points[c] = [x, x]
        end
    end
    
    pos = [0, 0]
    distance = [0, 0]
    color = sort(collect(keys(points)))
    for c in color
        d = abs(points[c][1] - points[c][2])
        left_distance = min(distance[1] + abs(pos[1] - points[c][2]) + d, distance[2] + abs(pos[2] - points[c][2]) + d)
        right_distance = min(distance[1] + abs(pos[1] - points[c][1]) + d, distance[2] + abs(pos[2] - points[c][1]) + d)

        distance[1] = left_distance
        distance[2] = right_distance
        pos[1] = points[c][1]
        pos[2] = points[c][2]
    end

    return min(distance[1]+abs(pos[1]), distance[2]+abs(pos[2]))
end

println(solve())