function solve()
    N = parse(Int, readline())
    points = zeros(Int, N, 2)
    for i=1:N
        points[i, :] = [parse(Int, x) for x in split(readline())]
    end

    for i=1:N
        max_j = 0
        max_d = 0
        for j=1:N
            if i ≠ j
                d = (points[i, 1] - points[j, 1])^2 + (points[i, 2] - points[j, 2])^2
                if max_j == 0 || max_d < d
                    max_j = j
                    max_d = d
                end
            end
        end
        println(max_j)
    end
end

solve()
