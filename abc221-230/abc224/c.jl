function solve()
    n = parse(Int, readline())
    points = zeros(Int, (n, 2))
    for i=1:n
        points[i, :] = [parse(Int, x) for x in split(readline())]
    end
    ret = 0
    for i=1:n-2, j=i+1:n-1, k=j+1:n
        if (points[j, 2] - points[i, 2])*(points[k, 1] - points[i, 1])  ≠ (points[k, 2] - points[i, 2])*(points[j, 1] - points[i, 1])
            ret += 1
        end
    end
    ret
end

println(solve())
