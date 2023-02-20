function solve()
    n = parse(Int, readline())
    points = zeros(Int, n, 2)
    for i=1:n
        c = [parse(Int, x) for x in split(readline())]
        points[i, 1] = c[1]
        points[i, 2] = c[2]
    end

    ret = 0
    for i=1:n, j=i+1:n
        d = (points[i, 1] - points[j, 1])^2 + (points[i, 2] - points[j, 2])^2
        if ret < d
            ret = d
        end
    end
    √ret
end

println(solve())
