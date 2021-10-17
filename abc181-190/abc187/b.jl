function solve()
    n = parse(Int, readline())
    points = []
    for _ in 1:n
        push!(points, [parse(Int, x) for x in split(readline())])
    end
    ret = 0
    for i=1:n-1, j=i+1:n
        s = (points[i][2] - points[j][2]) / (points[i][1] - points[j][1])
        if -1 ≤ s ≤ 1
            ret += 1
        end
    end
    ret
end

println(solve())
